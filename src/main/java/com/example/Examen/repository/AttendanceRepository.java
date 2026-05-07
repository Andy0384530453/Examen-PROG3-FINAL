package com.example.Examen.repository;

import com.example.Examen.controller.dto.CreateActivityMemberAttendance;
import com.example.Examen.entity.AttendanceStatus;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class AttendanceRepository {
    private final Connection connection;

    public Optional<AttendanceStatus> findStatusByMemberAndActivity(String memberId, String activityId) {
        String sql = "SELECT attendance_status FROM activity_member_attendance WHERE member_id = ? AND activity_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, memberId);
            statement.setString(2, activityId);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return Optional.of(AttendanceStatus.valueOf(rs.getString("attendance_status")));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Optional.empty();
    }

    public void saveAttendances(String activityId, List<CreateActivityMemberAttendance> list) {
        String sql = "INSERT INTO activity_member_attendance (activity_id, member_id, attendance_status) VALUES (?, ?, ?) " +
                "ON CONFLICT (activity_id, member_id) DO UPDATE SET attendance_status = EXCLUDED.attendance_status";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            connection.setAutoCommit(false);
            for (CreateActivityMemberAttendance attendance : list) {
                statement.setString(1, activityId);
                statement.setString(2, attendance.getMemberIdentifier());
                statement.setString(3, attendance.getAttendanceStatus().name());
                statement.addBatch();
            }
            statement.executeBatch();
            connection.commit();
        } catch (SQLException e) {
            try { connection.rollback(); } catch (SQLException ex) { throw new RuntimeException(ex); }
            throw new RuntimeException(e);
        } finally {
            try { connection.setAutoCommit(true); } catch (SQLException e) { throw new RuntimeException(e); }
        }
    }

    public Map<String, AttendanceStatus> findAllByActivityId(String activityId) {
        Map<String, AttendanceStatus> results = new HashMap<>();
        String sql = "SELECT member_id, attendance_status FROM activity_member_attendance WHERE activity_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, activityId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                results.put(
                        rs.getString("member_id"),
                        AttendanceStatus.valueOf(rs.getString("attendance_status"))
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return results;
    }
}