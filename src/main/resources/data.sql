-----
-- Mandeha par ordre le manao insertion anreo d tandremo fa misy enum amle atendance vakio tsra le spec

CREATE DATABASE agricultural_federation_api;

INSERT INTO collectivity (id, name, number, location, specialization, president_id, vice_president_id, treasurer_id, secretary_id) VALUES
('col-1', 'Mpanorina', 1, 'Ambatondrazaka', 'Riziculture', NULL, NULL, NULL, NULL),
('col-2', 'Dobo voalahany', 2, 'Ambatondrazaka', 'Pisciculture', NULL, NULL, NULL, NULL),
('col-3', 'Tantely mamy', 3, 'Brickaville', 'Apiculture', NULL, NULL, NULL, NULL);


INSERT INTO member (id, first_name, last_name, birth_date, gender, address, profession, phone_number, email, occupation, registration_fee_paid, membership_dues_paid) VALUES

('C1-M1', 'Prénom1', 'Nom1', '1980-02-01', 'MALE', 'Lot II V M Ambato.', 'Riziculteur', '0341234567', 'member.1@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C1-M2', 'Prénom2', 'Nom2', '1982-03-05', 'MALE', 'Lot II F Ambato.', 'Agriculteur', '0321234567', 'member.2@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C1-M3', 'Prénom3', 'Nom3', '1992-03-10', 'MALE', 'Lot II J Ambato.', 'Collecteur', '0331234567', 'member.3@fed-agrimg', 'SECRETARY', TRUE, TRUE),
('C1-M4', 'Prénom4', 'Nom4', '1988-05-22', 'FEMALE', 'Lot A K 50 Ambato.', 'Distributeur', '0381234567', 'member.4@fed-agri.mg', 'TREASURER', TRUE, TRUE),
('C1-M5', 'Prénom5', 'Nom5', '1999-08-21', 'MALE', 'Lot UV 80 Ambato.', 'Riziculteur', '0373434567', 'member.5@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C1-M6', 'Prénom6', 'Nom6', '1998-08-22', 'FEMALE', 'Lot UV 6 Ambato.', 'Riziculteur', '0372234567', 'member.6@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C1-M7', 'Prénom7', 'Nom7', '1998-01-31', 'MALE', 'Lot UV 7 Ambato.', 'Riziculteur', '0374234567', 'member.7@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C1-M8', 'Prénom8', 'Nom8', '1975-08-20', 'MALE', 'Lot UV 8 Ambato.', 'Riziculteur', '0370234567', 'member.8@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),

('C2-M1', 'Prénom1', 'Nom1', '1980-02-01', 'MALE', 'Lot II V M Ambato.', 'Riziculteur', '0341234567', 'member.1@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C2-M2', 'Prénom2', 'Nom2', '1982-03-05', 'MALE', 'Lot II F Ambato.', 'Agriculteur', '0321234567', 'member.2@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C2-M3', 'Prénom3', 'Nom3', '1992-03-10', 'MALE', 'Lot II J Ambato.', 'Collecteur', '0331234567', 'member.3@fed-agrimg', 'SENIOR_MEMBER', TRUE, TRUE),
('C2-M4', 'Prénom4', 'Nom4', '1988-05-22', 'FEMALE', 'Lot A K 50 Ambato.', 'Distributeur', '0381234567', 'member.4@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C2-M5', 'Prénom5', 'Nom5', '1999-08-21', 'MALE', 'Lot UV 80 Ambato.', 'Riziculteur', '0373434567', 'member.5@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C2-M6', 'Prénom6', 'Nom6', '1998-08-22', 'FEMALE', 'Lot UV 6 Ambato.', 'Riziculteur', '0372234567', 'member.6@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C2-M7', 'Prénom7', 'Nom7', '1998-01-31', 'MALE', 'Lot UV 7 Ambato.', 'Riziculteur', '0374234567', 'member.7@fed-agri.mg', 'SECRETARY', TRUE, TRUE),
('C2-M8', 'Prénom8', 'Nom8', '1975-08-20', 'MALE', 'Lot UV 8 Ambato.', 'Riziculteur', '0370234567', 'member.8@fed-agri.mg', 'TREASURER', TRUE, TRUE),

('C3-M1', 'Prénom9', 'Nom9', '1988-01-02', 'MALE', 'Lot 33 J Antsirabe', 'Apiculteur', '034034567', 'member.9@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C3-M2', 'Prénom10', 'Nom10', '1982-03-05', 'MALE', 'Lot 2 J Antsirabe', 'Agriculteur', '0338634567', 'member.10@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C3-M3', 'Prénom11', 'Nom11', '1992-03-12', 'MALE', 'Lot 8 KM Antsirabe', 'Collecteur', '0338234567', 'member.11@fed-agrigmg', 'SECRETARY', TRUE, TRUE),
('C3-M4', 'Prénom12', 'Nom12', '1988-05-10', 'FEMALE', 'Lot A K 50 Antsirabe', 'Distributeur', '0382334567', 'member.12@fed-agri.mg', 'TREASURER', TRUE, TRUE),
('C3-M5', 'Prénom13', 'Nom13', '1999-08-11', 'MALE', 'Lot UV 80 Antsirabe.', 'Apiculteur', '0373365567', 'member.13@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C3-M6', 'Prénom14', 'Nom14', '1998-08-09', 'FEMALE', 'Lot UV 6 Antsirabe.', 'Apiculteur', '0378234567', 'member.14@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C3-M7', 'Prénom15', 'Nom15', '1998-01-13', 'MALE', 'Lot UV 7 Antsirabe', 'Apiculteur', '0374914567', 'member.15@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE),
('C3-M8', 'Prénom16', 'Nom16', '1975-08-02', 'MALE', 'Lot UV 8 Antsirabe', 'Apiculteur', '0370634567', 'member.16@fed-agri.mg', 'SENIOR_MEMBER', TRUE, TRUE);

UPDATE member 
SET occupation = 'SENIOR' 
WHERE occupation = 'SENIOR_MEMBER';


UPDATE collectivity SET
    president_id = 'C1-M1', vice_president_id = 'C1-M2', treasurer_id = 'C1-M4', secretary_id = 'C1-M3'
WHERE id = 'col-1';

UPDATE collectivity SET
    president_id = 'C2-M5', vice_president_id = 'C2-M6', treasurer_id = 'C2-M8', secretary_id = 'C2-M7'
WHERE id = 'col-2';

UPDATE collectivity SET
    president_id = 'C3-M1', vice_president_id = 'C3-M2', treasurer_id = 'C3-M4', secretary_id = 'C3-M3'
WHERE id = 'col-3';



INSERT INTO collectivity_member (id, member_id, collectivity_id) VALUES
('cm1-1', 'C1-M1', 'col-1'), ('cm1-2', 'C1-M2', 'col-1'), ('cm1-3', 'C1-M3', 'col-1'), ('cm1-4', 'C1-M4', 'col-1'),
('cm1-5', 'C1-M5', 'col-1'), ('cm1-6', 'C1-M6', 'col-1'), ('cm1-7', 'C1-M7', 'col-1'), ('cm1-8', 'C1-M8', 'col-1'),
('cm2-1', 'C2-M1', 'col-2'), ('cm2-2', 'C2-M2', 'col-2'), ('cm2-3', 'C2-M3', 'col-2'), ('cm2-4', 'C2-M4', 'col-2'),
('cm2-5', 'C2-M5', 'col-2'), ('cm2-6', 'C2-M6', 'col-2'), ('cm2-7', 'C2-M7', 'col-2'), ('cm2-8', 'C2-M8', 'col-2'),
('cm3-1', 'C3-M1', 'col-3'), ('cm3-2', 'C3-M2', 'col-3'), ('cm3-3', 'C3-M3', 'col-3'), ('cm3-4', 'C3-M4', 'col-3'),
('cm3-5', 'C3-M5', 'col-3'), ('cm3-6', 'C3-M6', 'col-3'), ('cm3-7', 'C3-M7', 'col-3'), ('cm3-8', 'C3-M8', 'col-3');


INSERT INTO member_referee (id, member_refereed_id, member_referee_id) VALUES
-- Collectivité 1
('ref1','C1-M3','C1-M1'), ('ref2','C1-M3','C1-M2'),
('ref3','C1-M4','C1-M1'), ('ref4','C1-M4','C1-M2'),
('ref5','C1-M5','C1-M1'), ('ref6','C1-M5','C1-M2'),
('ref7','C1-M6','C1-M1'), ('ref8','C1-M6','C1-M2'),
('ref9','C1-M7','C1-M1'), ('ref10','C1-M7','C1-M2'),
('ref11','C1-M8','C1-M6'), ('ref12','C1-M8','C1-M7'),
-- Collectivité 2
('ref13','C2-M3','C1-M1'), ('ref14','C2-M3','C1-M2'),
('ref15','C2-M4','C1-M1'), ('ref16','C2-M4','C1-M2'),
('ref17','C2-M5','C1-M1'), ('ref18','C2-M5','C1-M2'),
('ref19','C2-M6','C1-M1'), ('ref20','C2-M6','C1-M2'),
('ref21','C2-M7','C1-M1'), ('ref22','C2-M7','C1-M2'),
('ref23','C2-M8','C1-M6'), ('ref24','C2-M8','C1-M7'),
-- Collectivité 3
('ref25','C3-M3','C3-M1'), ('ref26','C3-M3','C3-M2'),
('ref27','C3-M4','C3-M1'), ('ref28','C3-M4','C3-M2'),
('ref29','C3-M5','C3-M1'), ('ref30','C3-M5','C3-M2'),
('ref31','C3-M6','C3-M1'), ('ref32','C3-M6','C3-M2'),
('ref33','C3-M7','C3-M1'), ('ref34','C3-M7','C3-M2'),
('ref35','C3-M8','C3-M1'), ('ref36','C3-M8','C3-M2');

INSERT INTO membership_fee (id, label, amount, eligible_from, status, frequency, collectivity_id) VALUES
('cot-1', 'Cotisation annuelle', 100000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-1'),
('cot-2', 'Cotisation annuelle', 100000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-2'),
('cot-3', 'Cotisation annuelle', 50000,  '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-3');




INSERT INTO cash_account (id, collectivity_id) VALUES
('C1-A-CASH', 'col-1'),
('C2-A-CASH', 'col-2'),
('C3-A-CASH', 'col-3');

INSERT INTO mobile_banking_account (id, holder_name, service, mobile_number, collectivity_id) VALUES
('C1-A-MOBILE-1', 'Mpanorina', 'ORANGE_MONEY', '0370489612', 'col-1'),
('C2-A-MOBILE-1', 'Dobo voalohany', 'ORANGE_MONEY', '0320489612', 'col-2');

INSERT INTO member_payment (id, amount, creation_date, member_debited_id, membership_fee_id, payment_mode, financial_account_id) VALUES

('pay-C1-M1', 100000, '2026-01-01', 'C1-M1', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M2', 100000, '2026-01-01', 'C1-M2', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M3', 100000, '2026-01-01', 'C1-M3', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M4', 100000, '2026-01-01', 'C1-M4', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M5', 100000, '2026-01-01', 'C1-M5', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M6', 100000, '2026-01-01', 'C1-M6', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M7',  60000, '2026-01-01', 'C1-M7', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M8',  90000, '2026-01-01', 'C1-M8', 'cot-1', 'CASH', 'C1-A-CASH'),


('pay-C2-M1',  60000, '2026-01-01', 'C2-M1', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M2',  90000, '2026-01-01', 'C2-M2', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M3', 100000, '2026-01-01', 'C2-M3', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M4', 100000, '2026-01-01', 'C2-M4', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M5', 100000, '2026-01-01', 'C2-M5', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M6', 100000, '2026-01-01', 'C2-M6', 'cot-2', 'CASH', 'C2-A-CASH'),
('pay-C2-M7',  40000, '2026-01-01', 'C2-M7', 'cot-2', 'MOBILE_BANKING', 'C2-A-MOBILE-1'),
('pay-C2-M8',  60000, '2026-01-01', 'C2-M8', 'cot-2', 'MOBILE_BANKING', 'C2-A-MOBILE-1');
----------------------------------------------------------------------
----------------------------------------------------------------------
-----------------------------------------------------------------------

-- ============================================================
-- Nouvelles cotisations (Tableaux 12,13,14)
-- ============================================================
INSERT INTO membership_fee (id, label, amount, eligible_from, status, frequency, collectivity_id) VALUES
('cot-1', 'Cotisation annuelle', 200000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-1'),
('cot-2', 'Famangiana',         20000,  '2026-04-30', 'ACTIVE', 'PUNCTUALLY', 'col-1'),
('cot-3', 'Cotisation annuelle', 200000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-2'),
('cot-4', 'Cotisation 2025',     100000, '2025-01-01', 'INACTIVE', 'ANNUALLY', 'col-2'),
('cot-5', 'Cotisation mensuelle', 25000, '2026-04-01', 'ACTIVE', 'MONTHLY', 'col-3');

-- ============================================================
INSERT INTO bank_account (id, holder_name, bank_name, bank_code, branch_code, account_number, key, collectivity_id) VALUES
('C3-A-BANK-1', 'Koto', 'BMOI', 4, 1, 123456789012, 0, 'col-3'),
('C3-A-BANK-2', 'Naivo', 'BRED', 8, 3, 456789012358, 0, 'col-3');

INSERT INTO mobile_banking_account (id, holder_name, service, mobile_number, collectivity_id) VALUES
('C3-A-MOBILE-1', 'Kolo', 'MVOLA', '00341889612', 'col-3');

-- ============================================================
-- Nouveaux paiements (Tableaux 15,16,17)
-- ============================================================
INSERT INTO member_payment (id, amount, creation_date, member_debited_id, membership_fee_id, payment_mode, financial_account_id) VALUES
-- Collectivité 1 (Tableau 15)
('pay-C1-M1-v2', 200000, '2026-01-01', 'C1-M1', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M2-v2', 200000, '2026-01-01', 'C1-M2', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M3-v2', 200000, '2026-01-01', 'C1-M3', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-C1-M4-v2', 200000, '2026-01-01', 'C1-M4', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-C1-M5-v2', 150000, '2026-01-01', 'C1-M5', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-C1-M6-v2', 100000, '2026-05-01', 'C1-M6', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M7-v2',  60000, '2026-05-01', 'C1-M7', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M8-v2',  90000, '2026-05-01', 'C1-M8', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C2-M1-v2', 120000, '2026-01-01', 'C2-M1', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M2-v2', 180000, '2026-01-01', 'C2-M2', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M3-v2', 200000, '2026-01-01', 'C2-M3', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M4-v2', 200000, '2026-01-01', 'C2-M4', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M5-v2', 200000, '2026-01-01', 'C2-M5', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M6-v2', 200000, '2026-01-01', 'C2-M6', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M7-v2',  80000, '2026-01-01', 'C2-M7', 'cot-3', 'MOBILE_BANKING', 'C2-A-MOBILE-1'),
('pay-C2-M8-v2', 120000, '2026-01-01', 'C2-M8', 'cot-3', 'MOBILE_BANKING', 'C2-A-MOBILE-1'),
('pay-C3-M1-avr', 25000, '2026-04-01', 'C3-M1', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M2-avr', 25000, '2026-04-01', 'C3-M2', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M3-avr', 25000, '2026-04-01', 'C3-M3', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M4-avr', 25000, '2026-04-01', 'C3-M4', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M5-avr', 25000, '2026-04-01', 'C3-M5', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M6-avr', 25000, '2026-04-01', 'C3-M6', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M7-avr', 25000, '2026-04-01', 'C3-M7', 'cot-5', 'CASH', 'C3-A-CASH'),
('pay-C3-M8-avr', 25000, '2026-04-01', 'C3-M8', 'cot-5', 'CASH', 'C3-A-CASH'),
('pay-C3-M1-mai', 25000, '2026-05-01', 'C3-M1', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M2-mai', 25000, '2026-05-01', 'C3-M2', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M3-mai', 15000, '2026-05-01', 'C3-M3', 'cot-5', 'BANK_TRANSFER', 'C3-A-MOBILE-1'),
('pay-C3-M4-mai', 15000, '2026-05-01', 'C3-M4', 'cot-5', 'BANK_TRANSFER', 'C3-A-MOBILE-1'),
('pay-C3-M5-mai', 20000, '2026-05-01', 'C3-M5', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M6-mai', 25000, '2026-05-01', 'C3-M6', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M7-mai',  5000, '2026-05-01', 'C3-M7', 'cot-5', 'CASH', 'C3-A-CASH'),
('pay-C3-M8-mai',  5000, '2026-05-01', 'C3-M8', 'cot-5', 'CASH', 'C3-A-CASH');

INSERT INTO member (id, first_name, last_name, birth_date, gender, address, profession, phone_number, email, occupation, registration_fee_paid, membership_dues_paid) VALUES
('N1-M1', 'Jean', 'Rakoto', '1990-01-01', 'MALE', 'Adresse random', 'Paysan', '0311111111', 'new1@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N1-M2', 'Marie', 'Rabe', '1992-02-02', 'FEMALE', 'Adresse random', 'Cultivatrice', '0322222222', 'new2@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N1-M3', 'Paul', 'Andry', '1985-03-03', 'MALE', 'Adresse random', 'Eleveur', '0333333333', 'new3@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N1-M4', 'Lucie', 'Hasina', '1995-04-04', 'FEMALE', 'Adresse random', 'Agricultrice', '0344444444', 'new4@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE);

INSERT INTO collectivity_member (id, member_id, collectivity_id) VALUES
('cm-n1-1', 'N1-M1', 'col-1'), ('cm-n1-2', 'N1-M2', 'col-1'), ('cm-n1-3', 'N1-M3', 'col-1'), ('cm-n1-4', 'N1-M4', 'col-1');

INSERT INTO member_referee (id, member_refereed_id, member_referee_id) VALUES
('refn1-1', 'N1-M1', 'C1-M1'), ('refn1-2', 'N1-M1', 'C1-M2'),
('refn1-3', 'N1-M2', 'C1-M1'), ('refn1-4', 'N1-M2', 'C1-M2'),
('refn1-5', 'N1-M3', 'C1-M1'), ('refn1-6', 'N1-M3', 'C1-M2'),
('refn1-7', 'N1-M4', 'C1-M1'), ('refn1-8', 'N1-M4', 'C1-M2');

-- Collectivité 2
INSERT INTO member (id, first_name, last_name, birth_date, gender, address, profession, phone_number, email, occupation, registration_fee_paid, membership_dues_paid) VALUES
('N2-M1', 'Tiana', 'Razafy', '1988-05-05', 'FEMALE', 'Adresse random', 'Commercant', '0355555555', 'new5@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N2-M2', 'Hery', 'Rajaona', '1991-06-06', 'MALE', 'Adresse random', 'Pecheur', '0366666666', 'new6@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N2-M3', 'Mamy', 'Raso', '1993-07-07', 'MALE', 'Adresse random', 'Eleveur', '0377777777', 'new7@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE);

INSERT INTO collectivity_member (id, member_id, collectivity_id) VALUES
('cm-n2-1', 'N2-M1', 'col-2'), ('cm-n2-2', 'N2-M2', 'col-2'), ('cm-n2-3', 'N2-M3', 'col-2');

INSERT INTO member_referee (id, member_refereed_id, member_referee_id) VALUES
('refn2-1', 'N2-M1', 'C2-M1'), ('refn2-2', 'N2-M1', 'C2-M2'),
('refn2-3', 'N2-M2', 'C2-M1'), ('refn2-4', 'N2-M2', 'C2-M2'),
('refn2-5', 'N2-M3', 'C2-M1'), ('refn2-6', 'N2-M3', 'C2-M2');

-- Collectivité 3
INSERT INTO member (id, first_name, last_name, birth_date, gender, address, profession, phone_number, email, occupation, registration_fee_paid, membership_dues_paid) VALUES
('N3-M1', 'Bako', 'Randria', '1987-08-08', 'MALE', 'Adresse random', 'Apiculteur', '0388888888', 'new8@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N3-M2', 'Lala', 'Ravelo', '1990-09-09', 'FEMALE', 'Adresse random', 'Agricultrice', '0399999999', 'new9@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N3-M3', 'Fidy', 'Randretsa', '1992-10-10', 'MALE', 'Adresse random', 'Pisciculteur', '0310101010', 'new10@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N3-M4', 'Voahangy', 'Razak', '1994-11-11', 'FEMALE', 'Adresse random', 'Commercant', '0321212121', 'new11@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N3-M5', 'Nivo', 'Rakotobe', '1996-12-12', 'MALE', 'Adresse random', 'Eleveur', '0332323232', 'new12@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE),
('N3-M6', 'Miora', 'Andrian', '1998-01-13', 'FEMALE', 'Adresse random', 'Apicultrice', '0343434343', 'new13@mail.com', 'JUNIOR_MEMBER', TRUE, TRUE);

INSERT INTO collectivity_member (id, member_id, collectivity_id) VALUES
('cm-n3-1', 'N3-M1', 'col-3'), ('cm-n3-2', 'N3-M2', 'col-3'), ('cm-n3-3', 'N3-M3', 'col-3'),
('cm-n3-4', 'N3-M4', 'col-3'), ('cm-n3-5', 'N3-M5', 'col-3'), ('cm-n3-6', 'N3-M6', 'col-3');

INSERT INTO member_referee (id, member_refereed_id, member_referee_id) VALUES
('refn3-1', 'N3-M1', 'C3-M1'), ('refn3-2', 'N3-M1', 'C3-M2'),
('refn3-3', 'N3-M2', 'C3-M1'), ('refn3-4', 'N3-M2', 'C3-M2'),
('refn3-5', 'N3-M3', 'C3-M1'), ('refn3-6', 'N3-M3', 'C3-M2'),
('refn3-7', 'N3-M4', 'C3-M1'), ('refn3-8', 'N3-M4', 'C3-M2'),
('refn3-9', 'N3-M5', 'C3-M1'), ('refn3-10','N3-M5', 'C3-M2'),
('refn3-11','N3-M6', 'C3-M1'), ('refn3-12','N3-M6', 'C3-M2');
