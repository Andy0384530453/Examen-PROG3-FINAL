package com.example.Examen.controller.dto;

public record MemberDescription(
        String id,
        String firstName,
        String lastName,
        String email,
        String occupation
) {}