package com.example.Examen.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@NoArgsConstructor
public class DetailedCollectivityLocalStatistics extends CollectivityLocalStatistics {
    private Double assiduityPercentage;
}