package com.example.Examen.service;

import com.example.Examen.controller.dto.CollectivityLocalStatistics;
import com.example.Examen.controller.dto.CollectivityOverallStatistics;
import com.example.Examen.controller.dto.DetailedCollectivityLocalStatistics;
import com.example.Examen.exception.BadRequestException;
import com.example.Examen.exception.NotFoundException;
import com.example.Examen.repository.CollectivityRepository;
import com.example.Examen.repository.StatisticsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StatisticsService {
    private final StatisticsRepository statisticsRepository;
    private final CollectivityRepository collectivityRepository;

    public List<CollectivityLocalStatistics> getLocalStatistics(String id, LocalDate from, LocalDate to) {

        collectivityRepository.findById(id)
                .orElseThrow(() -> new NotFoundException("Collectivity.id= " + id + " not found"));

        if (from == null || to == null) {
            throw new BadRequestException("Mandatory query parameters not provided or malformed.");
        }

        return statisticsRepository.getLocalStatistics(id, from, to);
    }

    public List<CollectivityOverallStatistics> getOverallStatistics(LocalDate from, LocalDate to) {
        if (from == null || to == null) {
            throw new BadRequestException("Mandatory query parameters not provided or malformed.");
        }
        return statisticsRepository.getOverallStatistics(from, to);
    }


        public List<DetailedCollectivityLocalStatistics> getDetailedLocalStatistics(String id, LocalDate from, LocalDate to) {
            return statisticsRepository.getDetailedLocalStats(id, from, to);
        }
    }

