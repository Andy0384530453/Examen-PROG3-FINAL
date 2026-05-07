package com.example.Examen.repository;

import com.example.Examen.entity.ActivityType;
import com.example.Examen.entity.CollectivityActivity;
import com.example.Examen.entity.MemberOccupation;
import com.example.Examen.entity.MonthlyRecurrenceRule;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class ActivityRepository {
    private final Connection connection;

    public List<CollectivityActivity> saveAll(List<CollectivityActivity> activities) {
        String sql = """
            INSERT INTO activity (id, collectivity_id, label, activity_type, executive_date, 
                                 week_ordinal, day_of_week, concerned_occupations) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            """;
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            connection.setAutoCommit(false);
            for (CollectivityActivity activity : activities) {
                statement.setString(1, activity.getId());
                statement.setString(2, activity.getCollectivityId());
                statement.setString(3, activity.getLabel());
                statement.setString(4, activity.getActivityType().name());
                statement.setDate(5, activity.getExecutiveDate() != null ? Date.valueOf(activity.getExecutiveDate()) : null);

                if (activity.getRecurrenceRule() != null) {
                    statement.setInt(6, activity.getRecurrenceRule().getWeekOrdinal());
                    statement.setString(7, activity.getRecurrenceRule().getDayOfWeek());
                } else {
                    statement.setNull(6, Types.INTEGER);
                    statement.setNull(7, Types.VARCHAR);
                }

                // On stocke les occupations sous forme de chaîne séparée par des virgules ou Array SQL
                String occupations = String.join(",", activity.getMemberOccupationConcerned().stream().map(Enum::name).toList());
                statement.setString(8, occupations);

                statement.addBatch();
            }
            statement.executeBatch();
            connection.commit();
            return activities;
        } catch (SQLException e) {
            try { connection.rollback(); } catch (SQLException ex) { throw new RuntimeException(ex); }
            throw new RuntimeException(e);
        }
    }

    public List<CollectivityActivity> findByCollectivityId(String collectivityId) {
        List<CollectivityActivity> activities = new ArrayList<>();
        String sql = "SELECT id, collectivity_id, label, activity_type, executive_date, week_ordinal, day_of_week, concerned_occupations FROM activity WHERE collectivity_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, collectivityId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                activities.add(mapResultSetToActivity(rs));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return activities;
    }

    public Optional<CollectivityActivity> findById(String activityId) {
        String sql = "SELECT id, collectivity_id, label, activity_type, executive_date, week_ordinal, day_of_week, concerned_occupations FROM activity WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, activityId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return Optional.of(mapResultSetToActivity(rs));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Optional.empty();
    }

    private CollectivityActivity mapResultSetToActivity(ResultSet rs) throws SQLException {
        CollectivityActivity activity = new CollectivityActivity();
        activity.setId(rs.getString("id"));
        activity.setCollectivityId(rs.getString("collectivity_id"));
        activity.setLabel(rs.getString("label"));
        activity.setActivityType(ActivityType.valueOf(rs.getString("activity_type")));

        Date execDate = rs.getDate("executive_date");
        if (execDate != null) {
            activity.setExecutiveDate(execDate.toLocalDate());
        }

        int weekOrdinal = rs.getInt("week_ordinal");
        if (!rs.wasNull()) {
            activity.setRecurrenceRule(new MonthlyRecurrenceRule(weekOrdinal, rs.getString("day_of_week")));
        }

        String occs = rs.getString("concerned_occupations");
        if (occs != null && !occs.isEmpty()) {
            activity.setMemberOccupationConcerned(
                    Arrays.stream(occs.split(",")).map(MemberOccupation::valueOf).toList()
            );
        }
        return activity;
    }
}