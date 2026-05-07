package com.example.Examen.service;

import com.example.Examen.entity.Member;
import com.example.Examen.entity.MemberPayment;
import com.example.Examen.entity.Transaction;
import com.example.Examen.exception.BadRequestException;
import com.example.Examen.repository.MemberPaymentRepository;
import com.example.Examen.repository.MemberRepository;
import com.example.Examen.repository.TransactionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

import static com.example.Examen.entity.TransactionType.IN;
import static java.time.LocalDate.now;
import static java.util.UUID.randomUUID;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;
    private final MemberPaymentRepository memberPaymentRepository;
    private final TransactionRepository transactionRepository;

    public List<Member> addNewMembers(List<Member> memberList) {
        for (Member member : memberList) {

            if (member.getId() == null) {
                member.setId(randomUUID().toString());
            }

            if (!member.refereesAreEligible()) {
                throw new BadRequestException("Member.id=" + member.getId() + " member referees are not eligible");
            }


            if (member.getMembershipDuesPaid() == null || !member.getMembershipDuesPaid()) {
                throw new BadRequestException("Member.id=" + member.getId() + " membership dues not paid");
            }

            if (member.getRegistrationFeePaid() == null || !member.getRegistrationFeePaid()) {
                throw new BadRequestException("Member.id=" + member.getId() + " registration fees not paid");
            }
        }
        return memberRepository.saveAll(memberList);
    }

    public List<MemberPayment> createPayments(List<MemberPayment> memberPaymentList) {
        for (MemberPayment payment : memberPaymentList) {

            payment.setId(randomUUID().toString());
            payment.setCreationDate(now());
        }

        List<MemberPayment> savedMemberPayments = memberPaymentRepository.saveAll(memberPaymentList);

        List<Transaction> newTransactionList = savedMemberPayments.stream()
                .map(memberPayment -> {
                    return Transaction.builder()
                            .id(randomUUID().toString())
                            .memberDebited(memberPayment.getMemberOwner())
                            .amount(memberPayment.getAmount())
                            .type(IN)
                            .creationDate(memberPayment.getCreationDate())
                            .accountCredited(memberPayment.getAccountCredited())
                            .build();
                })
                .collect(Collectors.toList());
        transactionRepository.saveAll(newTransactionList);

        return savedMemberPayments;
    }
}
