package com.example.Examen.mapper;


import com.example.Examen.entity.Collectivity;
import com.example.Examen.entity.CollectivityStructure;
import com.example.Examen.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CollectivityMapper {
    public Collectivity mapFromResultSet(ResultSet rs) throws SQLException {

        return Collectivity.builder()
                .id(rs.getString("id"))
                .name(rs.getString("name"))
                .number(rs.getInt("number"))
                .location(rs.getString("location"))
                .specialization(rs.getString("specialization"))
                .build();
    }
}
