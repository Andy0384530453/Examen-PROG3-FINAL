package com.example.Examen.service;

import com.example.Examen.entity.CollectivityActivity;
import com.example.Examen.exception.BadRequestException;
import com.example.Examen.exception.NotFoundException;
import com.example.Examen.repository.ActivityRepository;
import com.example.Examen.repository.CollectivityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ActivityService {

    private final ActivityRepository activityRepository;
    private final CollectivityRepository collectivityRepository;

    public List<CollectivityActivity> createActivities(String collectivityId, List<CollectivityActivity> activities) {

        collectivityRepository.findById(collectivityId)
                .orElseThrow(() -> new NotFoundException("Collectivity not found with id: " + collectivityId));

        for (CollectivityActivity activity : activities) {

            if (activity.getRecurrenceRule() != null && activity.getExecutiveDate() != null) {
                throw new BadRequestException("Both recurrence rule and executive date provided.");
            }

            if (activity.getRecurrenceRule() == null && activity.getExecutiveDate() == null) {
                throw new BadRequestException("Activity must have either a recurrence rule or an executive date.");
            }
            activity.setId(UUID.randomUUID().toString());
            activity.setCollectivityId(collectivityId);
        }

        return activityRepository.saveAll(activities);
    }

    public List<CollectivityActivity> getActivitiesByCollectivity(String collectivityId) {

        collectivityRepository.findById(collectivityId)
                .orElseThrow(() -> new NotFoundException("Collectivity not found"));

        return activityRepository.findByCollectivityId(collectivityId);
    }
}