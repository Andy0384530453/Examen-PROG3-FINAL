package com.example.Examen.service;

import com.example.Examen.controller.dto.ActivityMemberAttendance;
import com.example.Examen.controller.dto.CreateActivityMemberAttendance;
import com.example.Examen.controller.dto.MemberDescription;
import com.example.Examen.entity.AttendanceStatus;
import com.example.Examen.entity.CollectivityActivity;
import com.example.Examen.entity.Member;
import com.example.Examen.exception.NotFoundException;
import com.example.Examen.repository.ActivityRepository;
import com.example.Examen.repository.AttendanceRepository;
import com.example.Examen.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.BadRequestException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class AttendanceService {
    private final AttendanceRepository attendanceRepository;
    private final ActivityRepository activityRepository;
    private final MemberRepository memberRepository;


    public List<ActivityMemberAttendance> getActivityAttendance(String collectivityId, String activityId) {

        CollectivityActivity activity = activityRepository.findById(activityId)
                .orElseThrow(() -> new NotFoundException("Activity not found"));

        if (!activity.getCollectivityId().equals(collectivityId)) {
            throw new NotFoundException("Activity not found for this collectivity");
        }

        List<Member> members = memberRepository.findByCollectivityId(collectivityId);


        Map<String, AttendanceStatus> recordedStatus = attendanceRepository.findAllByActivityId(activityId);

        return members.stream().map(member -> {
            AttendanceStatus status = recordedStatus.getOrDefault(member.getId(), AttendanceStatus.UNDEFINED);

            if (status == AttendanceStatus.UNDEFINED && activity.getMemberOccupationConcerned().contains(member.getOccupation())) {
                status = AttendanceStatus.MISSING;
            }

            return ActivityMemberAttendance.builder()
                    .id(UUID.randomUUID().toString())
                    .memberDescription(new MemberDescription(
                            member.getId(),
                            member.getFirstName(),
                            member.getLastName(),
                            member.getEmail(),
                            member.getOccupation().name()
                    ))
                    .attendanceStatus(status)
                    .build();
        }).toList();
    }
    public List<ActivityMemberAttendance> confirmAttendance(String activityId, List<CreateActivityMemberAttendance> list) throws BadRequestException {

        activityRepository.findById(activityId)
                .orElseThrow(() -> new NotFoundException("Activity not found"));

        for (CreateActivityMemberAttendance item : list) {

            Optional<AttendanceStatus> existingStatus = attendanceRepository.findStatusByMemberAndActivity(
                    item.getMemberIdentifier(), activityId);

            if (existingStatus.isPresent()) {

                throw new BadRequestException("Attendance already confirmed for member: " + item.getMemberIdentifier());
            }
        }

        attendanceRepository.saveAttendances(activityId, list);

        return getActivityAttendance(null, activityId);
    }
}