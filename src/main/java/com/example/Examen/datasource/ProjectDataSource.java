package com.example.Examen.datasource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Configuration
public class ProjectDataSource {

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/agricultural_federation_api");
        dataSource.setUsername("postgres");
        dataSource.setPassword("ntsoa");
        return dataSource;
    }

    @Bean
    public Connection getConnection(DataSource dataSource) throws SQLException {
        return dataSource.getConnection();
    }
}