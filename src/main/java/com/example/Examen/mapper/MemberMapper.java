package com.example.Examen.mapper;

import com.example.Examen.entity.Gender;
import com.example.Examen.entity.Member;
import com.example.Examen.entity.MemberOccupation;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class MemberMapper {
    public Member mapFromResultSet(ResultSet rs) throws SQLException {
        String genderStr = rs.getString("gender");
        String occupationStr = rs.getString("occupation");

        return Member.builder()
                .id(rs.getString("id"))
                .firstName(rs.getString("first_name"))
                .lastName(rs.getString("last_name"))
                .birthDate(rs.getDate("birth_date") != null ? rs.getDate("birth_date").toLocalDate() : null)
                .gender(genderStr != null ? Gender.valueOf(genderStr.toUpperCase().trim()) : null)
                .occupation(occupationStr != null ? MemberOccupation.valueOf(occupationStr.toUpperCase().trim()) : null)
                .registrationFeePaid(rs.getBoolean("registration_fee_paid"))
                .membershipDuesPaid(rs.getBoolean("membership_dues_paid"))
                .email(rs.getString("email"))
                .build();
    }
}