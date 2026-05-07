package com.example.Examen.controller.dto;

public record CollectivityOverallStatistics(
        String id,
        CollectivityInformation collectivityInformation,
        Integer newMembersNumber,
        Double overallMemberCurrentDuePercentage
) {}