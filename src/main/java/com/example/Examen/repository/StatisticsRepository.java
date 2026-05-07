package com.example.Examen.repository;

import com.example.Examen.controller.dto.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class StatisticsRepository {
    private final Connection connection;

    public List<CollectivityLocalStatistics> getLocalStatistics(String collectivityId, LocalDate from, LocalDate to) {
        List<CollectivityLocalStatistics> statsList = new ArrayList<>();
        String sql = """
            SELECT 
                m.id, m.first_name, m.last_name, m.email, m.occupation,
                COALESCE(SUM(p.amount), 0) as earned_amount,
                (
                  SELECT COALESCE(SUM(mf.amount), 0)
                  FROM membership_fee mf
                  WHERE mf.collectivity_id = ? 
                  AND mf.status = 'ACTIVE'
                  AND mf.eligible_from BETWEEN ? AND ?
                ) - COALESCE(SUM(p.amount), 0) as unpaid_amount
            FROM member m
            INNER JOIN collectivity_member cm ON m.id = cm.member_id
            LEFT JOIN member_payment p ON m.id = p.member_debited_id 
                AND p.creation_date BETWEEN ? AND ?
            WHERE cm.collectivity_id = ?
            GROUP BY m.id, m.first_name, m.last_name, m.email, m.occupation
            """;

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, collectivityId);
            statement.setDate(2, Date.valueOf(from));
            statement.setDate(3, Date.valueOf(to));
            statement.setDate(4, Date.valueOf(from));
            statement.setDate(5, Date.valueOf(to));
            statement.setString(6, collectivityId);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                System.out.println("unpaid amount of" + rs.getString("last_name")  +rs.getDouble("unpaid_amount"));
                statsList.add(new CollectivityLocalStatistics(
                        new MemberDescription(
                                rs.getString("id"), rs.getString("first_name"),
                                rs.getString("last_name"), rs.getString("email"),
                                rs.getString("occupation")
                        ),
                        rs.getDouble("earned_amount"),
                        rs.getDouble("unpaid_amount")
                        
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println(statsList);
        return statsList;
    }

    public List<CollectivityOverallStatistics> getOverallStatistics(LocalDate from, LocalDate to) {
        List<CollectivityOverallStatistics> statsList = new ArrayList<>();
        String sql = """
            SELECT 
                c.id, 
                c.name, 
                c.number,
            (SELECT COUNT(cm.member_id) 
            FROM collectivity_member cm 
        WHERE cm.collectivity_id = c.id) as total_members,
        (SELECT COUNT(DISTINCT mp.member_debited_id) 
        FROM member_payment mp 
        INNER JOIN collectivity_member cm ON mp.member_debited_id = cm.member_id
           WHERE cm.collectivity_id = c.id 
        AND mp.creation_date BETWEEN ? AND ?) as paid_count
        FROM collectivity c 
            GROUP BY c.id, c.name, c.number ORDER BY id
        """;

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setDate(1, Date.valueOf(from));
            statement.setDate(2, Date.valueOf(to));

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                String cId = rs.getString("id");
                int total = rs.getInt("total_members");
                int paid = rs.getInt("paid_count");
                double ratio = (total > 0) ? ((double) paid / total) * 100.0 : 0.0;

                CollectivityInformation info = new CollectivityInformation();
                info.setId(cId);
                info.setName(rs.getString("name"));
                info.setNumber(rs.getInt("number"));

                statsList.add(new CollectivityOverallStatistics(
                        cId,
                        info,
                        0,
                        ratio
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return statsList;
    }

        public List<DetailedCollectivityLocalStatistics> getDetailedLocalStats(String collectivityId, LocalDate from, LocalDate to) {
            List<DetailedCollectivityLocalStatistics> stats = new ArrayList<>();
            String sql = """
            SELECT 
                m.id, m.first_name, m.last_name, m.email, m.occupation,
                COALESCE(SUM(p.amount), 0) as earned,
                COALESCE(
                    (SELECT (COUNT(1) FILTER (WHERE att.attendance_status = 'ATTENDED')::float / 
                             NULLIF(COUNT(1), 0)) * 100
                     FROM activity_member_attendance att
                     JOIN activity a ON att.activity_id = a.id
                     WHERE att.member_id = m.id 
                     AND a.executive_date BETWEEN ? AND ?), 0
                ) as assiduity
            FROM "member" m
            LEFT JOIN member_payment p ON m.id = p.member_debited_id 
                AND p.creation_date BETWEEN ? AND ?
            JOIN collectivity_member cm ON m.id = cm.member_id
            WHERE cm.collectivity_id = ?
            GROUP BY m.id, m.first_name, m.last_name, m.email, m.occupation;
            """;

            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setDate(1, Date.valueOf(from));
                ps.setDate(2, Date.valueOf(to));
                ps.setDate(3, Date.valueOf(from));
                ps.setDate(4, Date.valueOf(to));
                ps.setString(5, collectivityId);

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    MemberDescription desc = new MemberDescription(
                            rs.getString("id"), rs.getString("first_name"),
                            rs.getString("last_name"), rs.getString("email"),
                            rs.getString("occupation")
                    );

                    stats.add(DetailedCollectivityLocalStatistics.builder()
                            .memberDescription(desc)
                            .earnedAmount(rs.getDouble("earned"))
                            .unpaidAmount(0.0)
                            .assiduityPercentage(rs.getDouble("assiduity"))
                            .build());
                }
            } catch (SQLException e) { throw new RuntimeException(e); }
            return stats;
        }
}