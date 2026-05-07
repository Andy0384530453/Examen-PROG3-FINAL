package com.example.Examen.controller;

import com.example.Examen.controller.dto.ActivityMemberAttendance;
import com.example.Examen.controller.dto.CreateActivityMemberAttendance;
import com.example.Examen.entity.CollectivityActivity;
import com.example.Examen.service.ActivityService;
import com.example.Examen.service.AttendanceService;
import com.example.Examen.exception.BadRequestException;
import com.example.Examen.exception.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/collectivities/{id}")
public class ActivityController {

    private final ActivityService activityService;
    private final AttendanceService attendanceService;

    @PostMapping("/activities")
    public ResponseEntity<?> createActivities(
            @PathVariable String id,
            @RequestBody List<CollectivityActivity> activities) {
        try {
            return ResponseEntity.status(HttpStatus.CREATED)
                    .body(activityService.createActivities(id, activities));
        } catch (BadRequestException e) {

            return ResponseEntity.badRequest()
                    .body("Both recurrence rule and executive date provided, or provided data malformed inside payload.");
        } catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }

    @GetMapping("/activities")
    public ResponseEntity<?> getActivities(@PathVariable String id) {
        try {
            return ResponseEntity.ok(activityService.getActivitiesByCollectivity(id));
        } catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }
    @PostMapping("/activities/{activityId}/attendance")
    public ResponseEntity<?> confirmAttendance(
            @PathVariable String id,
            @PathVariable String activityId,
            @RequestBody List<CreateActivityMemberAttendance> attendanceList) {
        try {
            return ResponseEntity.status(HttpStatus.CREATED)
                    .body(attendanceService.confirmAttendance(activityId, attendanceList));
        } catch (BadRequestException e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        } catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        } catch (org.apache.coyote.BadRequestException e) {
            throw new RuntimeException(e);
        }
    }

    @GetMapping("/activities/{activityId}/attendance")
    public ResponseEntity<?> getAttendance(
            @PathVariable String id,
            @PathVariable String activityId) {
        try {
            return ResponseEntity.ok(attendanceService.getActivityAttendance(id, activityId));
        } catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }
}