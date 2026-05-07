package com.example.Examen.controller;

import com.example.Examen.controller.dto.DetailedCollectivityLocalStatistics;
import com.example.Examen.controller.dto.CollectivityOverallStatistics;
import com.example.Examen.exception.BadRequestException;
import com.example.Examen.exception.NotFoundException;
import com.example.Examen.service.StatisticsService;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

import static org.springframework.http.HttpStatus.*;

@RestController
@RequiredArgsConstructor
public class StatisticsController {
    private final StatisticsService statisticsService;

    @GetMapping("/collectivites/{id}/statistics")
    public ResponseEntity<?> getLocalStats(
            @PathVariable String id,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate from,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate to) {
        try {
            List<DetailedCollectivityLocalStatistics> stats = statisticsService.getDetailedLocalStatistics(id, from, to);
            return ResponseEntity.status(OK).body(stats);
        } catch (BadRequestException e) {
            return ResponseEntity.status(BAD_REQUEST)
                    .body("Mandatory query parameters not provided or malformed.");
        } catch (NotFoundException e) {
            return ResponseEntity.status(NOT_FOUND).body(e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.status(INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }

    @GetMapping("/collectivites/statistics")
    public ResponseEntity<?> getOverallStatistics(
            @RequestParam(required = false) String id,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate from,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate to) {
        try {
            return ResponseEntity.status(OK)
                    .body(statisticsService.getOverallStatistics(from, to));
        } catch (Exception e) {
            return ResponseEntity.status(INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
}