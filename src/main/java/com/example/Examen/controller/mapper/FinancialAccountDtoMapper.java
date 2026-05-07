package com.example.Examen.controller.mapper;


import com.example.Examen.controller.dto.Bank;
import com.example.Examen.controller.dto.FinancialAccount;
import com.example.Examen.controller.dto.MobileBankingService;
import com.example.Examen.entity.BankAccount;
import com.example.Examen.entity.CashAccount;
import com.example.Examen.entity.MobileBankingAccount;

import org.springframework.stereotype.Component;

import java.time.LocalDate;

import static java.time.LocalDate.now;

@Component
public class FinancialAccountDtoMapper {
    public FinancialAccount mapToDto(com.example.Examen.entity.FinancialAccount financialAccount, LocalDate at) {
        LocalDate balanceAt = at == null ? now() : at;
        if (financialAccount instanceof CashAccount cashAccount) {
            return com.example.Examen.controller.dto.CashAccount.builder()
                    .id(cashAccount.getId())
                    .amount(cashAccount.getBalanceAt(balanceAt))
                    .build();
        } else if (financialAccount instanceof BankAccount bankAccount) {
            return com.example.Examen.controller.dto.BankAccount.builder()
                    .id(bankAccount.getId())
                    .holderName(bankAccount.getHolderName())
                    .bankName(bankAccount.getBankName() == null ? null : Bank.valueOf(bankAccount.getBankName().name()))
                    .bankCode(bankAccount.getBankCode())
                    .bankBranchCode(bankAccount.getBranchCode())
                    .bankAccountNumber(bankAccount.getAccountNumber())
                    .bankAccountKey(bankAccount.getAccountKey())
                    .amount(bankAccount.getBalanceAt(balanceAt))
                    .build();
        } else if (financialAccount instanceof MobileBankingAccount mobileBankingAccount) {
            return com.example.Examen.controller.dto.MobileBankingAccount.builder()
                    .id(mobileBankingAccount.getId())
                    .holderName(mobileBankingAccount.getHolderName())
                    .mobileNumber(mobileBankingAccount.getMobileNumber())
                    .mobileBankingService(mobileBankingAccount.getMobileBankingService() == null ? null : MobileBankingService.valueOf(mobileBankingAccount.getMobileBankingService().name()))
                    .amount(mobileBankingAccount.getBalanceAt(balanceAt))
                    .build();
        }
        throw new IllegalArgumentException("Unknown financial account type " + financialAccount.getClass().getName());
    }

    public FinancialAccount mapToDto(com.example.Examen.entity.FinancialAccount financialAccount) {
        return  mapToDto(financialAccount, now());
    }

}
