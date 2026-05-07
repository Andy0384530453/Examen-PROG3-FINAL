package com.example.Examen.entity;

import lombok.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
public class Member {
    private String id;
    private String firstName;
    private String lastName;
    private LocalDate birthDate;
    private Gender gender;
    private String address;
    private String profession;
    private String phoneNumber;
    private String email;

    // On utilise l'Enum du package local (entity)
    private MemberOccupation occupation;

    private List<Member> referees;
    private List<Collectivity> collectivities;
    private Boolean registrationFeePaid;
    private Boolean membershipDuesPaid;

    public boolean refereesAreEligible() {
        if (referees == null || referees.isEmpty()) {
            return false;
        }

        // On compare directement avec la valeur de l'Enum local
        long memberRefereesCount = referees.stream()
                .filter(member -> member.getCollectivities() != null &&
                        member.getCollectivities().stream().anyMatch(collectivity ->
                                this.collectivities != null && this.collectivities.contains(collectivity)
                                        && member.getOccupation() != MemberOccupation.JUNIOR)) // Pas de static ici
                .count();

        return memberRefereesCount >= 2;
    }

    public List<Collectivity> addCollectivity(Collectivity collectivity) {
        if (collectivities == null) {
            collectivities = new ArrayList<>();
        }
        collectivities.add(collectivity);
        return collectivities;
    }

    public List<Member> addReferees(List<Member> refereeMembers) {
        if (referees == null) {
            referees = new ArrayList<>();
        }
        referees.addAll(refereeMembers);
        return referees;
    }
}