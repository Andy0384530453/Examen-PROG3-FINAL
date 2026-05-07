-----
-- Mandeha par ordre le manao insertion anreo d tandremo fa misy enum amle atendance vakio tsra le spec

-- ============================================================
-- 1. MEMBRES (C1, C2, C3 + nouveaux N1, N2, N3)
-- ============================================================

INSERT INTO member (id, first_name, last_name, birth_date, gender, address, profession, phone_number, email, occupation, registration_fee_paid, membership_dues_paid) VALUES

('C1-M1', 'Andry', 'Rakoto', '1980-02-01', 'MALE', 'Lot II V M Ambatondrazaka', 'Riziculteur', '0341234567', 'andry.rakoto@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C1-M2', 'Hery', 'Rabe', '1982-03-05', 'MALE', 'Lot II F Ambatondrazaka', 'Agriculteur', '0321234567', 'hery.rabe@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C1-M3', 'Fidy', 'Randria', '1992-03-10', 'MALE', 'Lot II J Ambatondrazaka', 'Collecteur', '0331234567', 'fidy.randria@fed-agri.mg', 'SECRETARY', TRUE, TRUE),
('C1-M4', 'Lala', 'Ravelo', '1988-05-22', 'FEMALE', 'Lot A K 50 Ambatondrazaka', 'Distributeur', '0381234567', 'lala.ravelo@fed-agri.mg', 'TREASURER', TRUE, TRUE),
('C1-M5', 'Tovo', 'Razafy', '1999-08-21', 'MALE', 'Lot UV 80 Ambatondrazaka', 'Riziculteur', '0373434567', 'tovo.razafy@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C1-M6', 'Nivo', 'Rakotobe', '1998-08-22', 'FEMALE', 'Lot UV 6 Ambatondrazaka', 'Riziculteur', '0372234567', 'nivo.rakotobe@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C1-M7', 'Mamy', 'Raso', '1998-01-31', 'MALE', 'Lot UV 7 Ambatondrazaka', 'Riziculteur', '0374234567', 'mamy.raso@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C1-M8', 'Bako', 'Randretsa', '1975-08-20', 'MALE', 'Lot UV 8 Ambatondrazaka', 'Riziculteur', '0370234567', 'bako.randretsa@fed-agri.mg', 'SENIOR', TRUE, TRUE),

('C2-M1', 'Rivo', 'Rakoto', '1980-02-01', 'MALE', 'Lot II V M Ambatondrazaka', 'Riziculteur', '0341234567', 'rivo.rakoto@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C2-M2', 'Lanto', 'Rabe', '1982-03-05', 'MALE', 'Lot II F Ambatondrazaka', 'Agriculteur', '0321234567', 'lanto.rabe@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C2-M3', 'Fano', 'Randria', '1992-03-10', 'MALE', 'Lot II J Ambatondrazaka', 'Collecteur', '0331234567', 'fano.randria@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C2-M4', 'Miary', 'Ravelo', '1988-05-22', 'FEMALE', 'Lot A K 50 Ambatondrazaka', 'Distributeur', '0381234567', 'miary.ravelo@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C2-M5', 'Zo', 'Razafy', '1999-08-21', 'MALE', 'Lot UV 80 Ambatondrazaka', 'Riziculteur', '0373434567', 'zo.razafy@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C2-M6', 'Miora', 'Rakotobe', '1998-08-22', 'FEMALE', 'Lot UV 6 Ambatondrazaka', 'Riziculteur', '0372234567', 'miora.rakotobe@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C2-M7', 'Tiana', 'Raso', '1998-01-31', 'MALE', 'Lot UV 7 Ambatondrazaka', 'Riziculteur', '0374234567', 'tiana.raso@fed-agri.mg', 'SECRETARY', TRUE, TRUE),
('C2-M8', 'Mahefa', 'Randretsa', '1975-08-20', 'MALE', 'Lot UV 8 Ambatondrazaka', 'Riziculteur', '0370234567', 'mahefa.randretsa@fed-agri.mg', 'TREASURER', TRUE, TRUE),

('C3-M1', 'Rado', 'Rakoto', '1988-01-02', 'MALE', 'Lot 33 J Antsirabe', 'Apiculteur', '034034567', 'rado.rakoto@fed-agri.mg', 'PRESIDENT', TRUE, TRUE),
('C3-M2', 'Haja', 'Rabe', '1982-03-05', 'MALE', 'Lot 2 J Antsirabe', 'Agriculteur', '0338634567', 'haja.rabe@fed-agri.mg', 'VICE_PRESIDENT', TRUE, TRUE),
('C3-M3', 'Ny', 'Randria', '1992-03-12', 'MALE', 'Lot 8 KM Antsirabe', 'Collecteur', '0338234567', 'ny.randria@fed-agri.mg', 'SECRETARY', TRUE, TRUE),
('C3-M4', 'Aina', 'Ravelo', '1988-05-10', 'FEMALE', 'Lot A K 50 Antsirabe', 'Distributeur', '0382334567', 'aina.ravelo@fed-agri.mg', 'TREASURER', TRUE, TRUE),
('C3-M5', 'Koto', 'Razafy', '1999-08-11', 'MALE', 'Lot UV 80 Antsirabe', 'Apiculteur', '0373365567', 'koto.razafy@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C3-M6', 'Voahangy', 'Rakotobe', '1998-08-09', 'FEMALE', 'Lot UV 6 Antsirabe', 'Apiculteur', '0378234567', 'voahangy.rakotobe@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C3-M7', 'Naina', 'Raso', '1998-01-13', 'MALE', 'Lot UV 7 Antsirabe', 'Apiculteur', '0374914567', 'naina.raso@fed-agri.mg', 'SENIOR', TRUE, TRUE),
('C3-M8', 'Fara', 'Randretsa', '1975-08-02', 'MALE', 'Lot UV 8 Antsirabe', 'Apiculteur', '0370634567', 'fara.randretsa@fed-agri.mg', 'SENIOR', TRUE, TRUE),

('N1-M1', 'Jean', 'Rakoto', '1990-01-01', 'MALE', 'Lot 123 Ambatondrazaka', 'Paysan', '0311111111', 'jean.rakoto@email.com', 'JUNIOR', TRUE, TRUE),
('N1-M2', 'Marie', 'Rabe', '1992-02-02', 'FEMALE', 'Lot 456 Ambatondrazaka', 'Cultivatrice', '0322222222', 'marie.rabe@email.com', 'JUNIOR', TRUE, TRUE),
('N1-M3', 'Paul', 'Andry', '1985-03-03', 'MALE', 'Lot 789 Ambatondrazaka', 'Eleveur', '0333333333', 'paul.andry@email.com', 'JUNIOR', TRUE, TRUE),
('N1-M4', 'Lucie', 'Hasina', '1995-04-04', 'FEMALE', 'Lot 101 Ambatondrazaka', 'Agricultrice', '0344444444', 'lucie.hasina@email.com', 'JUNIOR', TRUE, TRUE),

('N2-M1', 'Tiana', 'Razafy', '1988-05-05', 'FEMALE', 'Lot 202 Brickaville', 'Commercant', '0355555555', 'tiana.razafy@email.com', 'JUNIOR', TRUE, TRUE),
('N2-M2', 'Hery', 'Rajaona', '1991-06-06', 'MALE', 'Lot 303 Brickaville', 'Pecheur', '0366666666', 'hery.rajaona@email.com', 'JUNIOR', TRUE, TRUE),
('N2-M3', 'Mamy', 'Raso', '1993-07-07', 'MALE', 'Lot 404 Brickaville', 'Eleveur', '0377777777', 'mamy.raso@email.com', 'JUNIOR', TRUE, TRUE),

('N3-M1', 'Bako', 'Randria', '1987-08-08', 'MALE', 'Lot 505 Antsirabe', 'Apiculteur', '0388888888', 'bako.randria@email.com', 'JUNIOR', TRUE, TRUE),
('N3-M2', 'Lala', 'Ravelo', '1990-09-09', 'FEMALE', 'Lot 606 Antsirabe', 'Agricultrice', '0399999999', 'lala.ravelo@email.com', 'JUNIOR', TRUE, TRUE),
('N3-M3', 'Fidy', 'Randretsa', '1992-10-10', 'MALE', 'Lot 707 Antsirabe', 'Pisciculteur', '0310101010', 'fidy.randretsa@email.com', 'JUNIOR', TRUE, TRUE),
('N3-M4', 'Voahangy', 'Razak', '1994-11-11', 'FEMALE', 'Lot 808 Antsirabe', 'Commercant', '0321212121', 'voahangy.razak@email.com', 'JUNIOR', TRUE, TRUE),
('N3-M5', 'Nivo', 'Rakotobe', '1996-12-12', 'MALE', 'Lot 909 Antsirabe', 'Eleveur', '0332323232', 'nivo.rakotobe@email.com', 'JUNIOR', TRUE, TRUE),
('N3-M6', 'Miora', 'Andrian', '1998-01-13', 'FEMALE', 'Lot 1010 Antsirabe', 'Apicultrice', '0343434343', 'miora.andrian@email.com', 'JUNIOR', TRUE, TRUE);

-- ============================================================
-- 2. COLLECTIVITES
-- ============================================================

INSERT INTO collectivity (id, name, number, location, specialization, president_id, vice_president_id, treasurer_id, secretary_id) VALUES
('col-1', 'Mpanorina', 1, 'Ambatondrazaka', 'Riziculture', NULL, NULL, NULL, NULL),
('col-2', 'Dobo voalahany', 2, 'Ambatondrazaka', 'Pisciculture', NULL, NULL, NULL, NULL),
('col-3', 'Tantely mamy', 3, 'Brickaville', 'Apiculture', NULL, NULL, NULL, NULL);

-- Mise à jour des responsables
UPDATE collectivity SET president_id = 'C1-M1', vice_president_id = 'C1-M2', treasurer_id = 'C1-M4', secretary_id = 'C1-M3' WHERE id = 'col-1';
UPDATE collectivity SET president_id = 'C2-M5', vice_president_id = 'C2-M6', treasurer_id = 'C2-M8', secretary_id = 'C2-M7' WHERE id = 'col-2';
UPDATE collectivity SET president_id = 'C3-M1', vice_president_id = 'C3-M2', treasurer_id = 'C3-M4', secretary_id = 'C3-M3' WHERE id = 'col-3';

-- ============================================================
-- 3. COMPTES FINANCIERS
-- ============================================================

-- Comptes caisse
INSERT INTO cash_account (id, collectivity_id) VALUES
('C1-A-CASH', 'col-1'),
('C2-A-CASH', 'col-2'),
('C3-A-CASH', 'col-3');

-- Comptes mobile banking
INSERT INTO mobile_banking_account (id, holder_name, service, mobile_number, collectivity_id) VALUES
('C1-A-MOBILE-1', 'Mpanorina', 'ORANGE_MONEY', '0370489612', 'col-1'),
('C2-A-MOBILE-1', 'Dobo voalahany', 'ORANGE_MONEY', '0320489612', 'col-2'),
('C3-A-MOBILE-1', 'Tantely mamy', 'MVOLA', '0345678901', 'col-3');

-- Comptes bancaires
INSERT INTO bank_account (id, holder_name, bank_name, bank_code, branch_code, account_number, key, collectivity_id) VALUES
('C3-A-BANK-1', 'Koto', 'BMOI', 4, 1, '123456789012345678', 12, 'col-3'),
('C3-A-BANK-2', 'Naivo', 'BRED', 8, 3, '45678901234567890', 34, 'col-3');

-- ============================================================
-- 4. COTISATIONS
-- ============================================================

INSERT INTO membership_fee (id, label, amount, eligible_from, status, frequency, collectivity_id) VALUES
-- Cotisations col-1
('cot-1', 'Cotisation annuelle 2026', 200000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-1'),
('cot-2', 'Famangiana', 20000, '2026-04-30', 'ACTIVE', 'PUNCTUALLY', 'col-1'),

('cot-3', 'Cotisation annuelle 2026', 200000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-2'),
('cot-4', 'Cotisation 2025', 100000, '2025-01-01', 'INACTIVE', 'ANNUALLY', 'col-2'),

('cot-5', 'Cotisation mensuelle', 25000, '2026-04-01', 'ACTIVE', 'MONTHLY', 'col-3'),
('cot-6', 'Cotisation annuelle 2026', 150000, '2026-01-01', 'ACTIVE', 'ANNUALLY', 'col-3');

-- ============================================================
-- 5. LIENS COLLECTIVITE-MEMBRE
-- ============================================================

INSERT INTO collectivity_member (id, member_id, collectivity_id) VALUES

('cm1-1', 'C1-M1', 'col-1'), ('cm1-2', 'C1-M2', 'col-1'), ('cm1-3', 'C1-M3', 'col-1'), ('cm1-4', 'C1-M4', 'col-1'),
('cm1-5', 'C1-M5', 'col-1'), ('cm1-6', 'C1-M6', 'col-1'), ('cm1-7', 'C1-M7', 'col-1'), ('cm1-8', 'C1-M8', 'col-1'),
('cm-n1-1', 'N1-M1', 'col-1'), ('cm-n1-2', 'N1-M2', 'col-1'), ('cm-n1-3', 'N1-M3', 'col-1'), ('cm-n1-4', 'N1-M4', 'col-1'),

('cm2-1', 'C2-M1', 'col-2'), ('cm2-2', 'C2-M2', 'col-2'), ('cm2-3', 'C2-M3', 'col-2'), ('cm2-4', 'C2-M4', 'col-2'),
('cm2-5', 'C2-M5', 'col-2'), ('cm2-6', 'C2-M6', 'col-2'), ('cm2-7', 'C2-M7', 'col-2'), ('cm2-8', 'C2-M8', 'col-2'),
('cm-n2-1', 'N2-M1', 'col-2'), ('cm-n2-2', 'N2-M2', 'col-2'), ('cm-n2-3', 'N2-M3', 'col-2'),

('cm3-1', 'C3-M1', 'col-3'), ('cm3-2', 'C3-M2', 'col-3'), ('cm3-3', 'C3-M3', 'col-3'), ('cm3-4', 'C3-M4', 'col-3'),
('cm3-5', 'C3-M5', 'col-3'), ('cm3-6', 'C3-M6', 'col-3'), ('cm3-7', 'C3-M7', 'col-3'), ('cm3-8', 'C3-M8', 'col-3'),
('cm-n3-1', 'N3-M1', 'col-3'), ('cm-n3-2', 'N3-M2', 'col-3'), ('cm-n3-3', 'N3-M3', 'col-3'),
('cm-n3-4', 'N3-M4', 'col-3'), ('cm-n3-5', 'N3-M5', 'col-3'), ('cm-n3-6', 'N3-M6', 'col-3');

-- ============================================================
-- 6. PARRAINAGES (au moins 2 parrains par nouveau membre)
-- ============================================================

INSERT INTO member_referee (id, member_refereed_id, member_referee_id) VALUES

('ref1','C1-M3','C1-M1'), ('ref2','C1-M3','C1-M2'),
('ref3','C1-M4','C1-M1'), ('ref4','C1-M4','C1-M2'),
('ref5','C1-M5','C1-M1'), ('ref6','C1-M5','C1-M2'),
('ref7','C1-M6','C1-M1'), ('ref8','C1-M6','C1-M2'),
('ref9','C1-M7','C1-M1'), ('ref10','C1-M7','C1-M2'),
('ref11','C1-M8','C1-M6'), ('ref12','C1-M8','C1-M7'),
('ref13','C2-M3','C1-M1'), ('ref14','C2-M3','C1-M2'),
('ref15','C2-M4','C1-M1'), ('ref16','C2-M4','C1-M2'),
('ref17','C2-M5','C1-M1'), ('ref18','C2-M5','C1-M2'),
('ref19','C2-M6','C1-M1'), ('ref20','C2-M6','C1-M2'),
('ref21','C2-M7','C1-M1'), ('ref22','C2-M7','C1-M2'),
('ref23','C2-M8','C1-M6'), ('ref24','C2-M8','C1-M7'),
('ref25','C3-M3','C3-M1'), ('ref26','C3-M3','C3-M2'),
('ref27','C3-M4','C3-M1'), ('ref28','C3-M4','C3-M2'),
('ref29','C3-M5','C3-M1'), ('ref30','C3-M5','C3-M2'),
('ref31','C3-M6','C3-M1'), ('ref32','C3-M6','C3-M2'),
('ref33','C3-M7','C3-M1'), ('ref34','C3-M7','C3-M2'),
('ref35','C3-M8','C3-M1'), ('ref36','C3-M8','C3-M2'),
('refn1-1', 'N1-M1', 'C1-M1'), ('refn1-2', 'N1-M1', 'C1-M2'),
('refn1-3', 'N1-M2', 'C1-M1'), ('refn1-4', 'N1-M2', 'C1-M2'),
('refn1-5', 'N1-M3', 'C1-M1'), ('refn1-6', 'N1-M3', 'C1-M2'),
('refn1-7', 'N1-M4', 'C1-M1'), ('refn1-8', 'N1-M4', 'C1-M2'),
('refn2-1', 'N2-M1', 'C2-M1'), ('refn2-2', 'N2-M1', 'C2-M2'),
('refn2-3', 'N2-M2', 'C2-M1'), ('refn2-4', 'N2-M2', 'C2-M2'),
('refn2-5', 'N2-M3', 'C2-M1'), ('refn2-6', 'N2-M3', 'C2-M2'),
('refn3-1', 'N3-M1', 'C3-M1'), ('refn3-2', 'N3-M1', 'C3-M2'),
('refn3-3', 'N3-M2', 'C3-M1'), ('refn3-4', 'N3-M2', 'C3-M2'),
('refn3-5', 'N3-M3', 'C3-M1'), ('refn3-6', 'N3-M3', 'C3-M2'),
('refn3-7', 'N3-M4', 'C3-M1'), ('refn3-8', 'N3-M4', 'C3-M2'),
('refn3-9', 'N3-M5', 'C3-M1'), ('refn3-10','N3-M5', 'C3-M2'),
('refn3-11','N3-M6', 'C3-M1'), ('refn3-12','N3-M6', 'C3-M2');

-- ============================================================
-- 7. PAIEMENTS
-- ============================================================

INSERT INTO member_payment (id, amount, creation_date, member_debited_id, membership_fee_id, payment_mode, financial_account_id) VALUES
-- Paiements collectivité 1
('pay-C1-M1', 200000, '2026-01-15', 'C1-M1', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M2', 200000, '2026-01-15', 'C1-M2', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M3', 200000, '2026-01-15', 'C1-M3', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-C1-M4', 200000, '2026-01-15', 'C1-M4', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-C1-M5', 150000, '2026-01-15', 'C1-M5', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M6', 0, '2026-01-15', 'C1-M6', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M7', 60000, '2026-01-15', 'C1-M7', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-C1-M8', 90000, '2026-01-15', 'C1-M8', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-N1-M1', 200000, '2026-02-01', 'N1-M1', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-N1-M2', 200000, '2026-02-01', 'N1-M2', 'cot-1', 'CASH', 'C1-A-CASH'),
('pay-N1-M3', 200000, '2026-02-01', 'N1-M3', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),
('pay-N1-M4', 200000, '2026-02-01', 'N1-M4', 'cot-1', 'MOBILE_BANKING', 'C1-A-MOBILE-1'),

('pay-C2-M1', 200000, '2026-01-20', 'C2-M1', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M2', 200000, '2026-01-20', 'C2-M2', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M3', 200000, '2026-01-20', 'C2-M3', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M4', 200000, '2026-01-20', 'C2-M4', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M5', 200000, '2026-01-20', 'C2-M5', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M6', 200000, '2026-01-20', 'C2-M6', 'cot-3', 'CASH', 'C2-A-CASH'),
('pay-C2-M7', 80000, '2026-01-20', 'C2-M7', 'cot-3', 'MOBILE_BANKING', 'C2-A-MOBILE-1'),
('pay-C2-M8', 120000, '2026-01-20', 'C2-M8', 'cot-3', 'MOBILE_BANKING', 'C2-A-MOBILE-1'),

('pay-C3-M1-avr', 25000, '2026-04-01', 'C3-M1', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M2-avr', 25000, '2026-04-01', 'C3-M2', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M3-avr', 25000, '2026-04-01', 'C3-M3', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M4-avr', 25000, '2026-04-01', 'C3-M4', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-1'),
('pay-C3-M5-avr', 25000, '2026-04-01', 'C3-M5', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M6-avr', 25000, '2026-04-01', 'C3-M6', 'cot-5', 'BANK_TRANSFER', 'C3-A-BANK-2'),
('pay-C3-M7-avr', 25000, '2026-04-01', 'C3-M7', 'cot-5', 'CASH', 'C3-A-CASH'),
('pay-C3-M8-avr', 25000, '2026-04-01', 'C3-M8', 'cot-5', 'CASH', 'C3-A-CASH');

-- ============================================================
-- 8. TRANSACTIONS
-- ============================================================

INSERT INTO transaction (id, amount, creation_date, transaction_type, financial_account_id, member_debited_id) VALUES
-- Transactions collectivité 1
('trans-col1-1', 50000.00, '2026-01-10', 'IN', 'C1-A-CASH', 'C1-M1'),
('trans-col1-2', 25000.00, '2026-01-15', 'OUT', 'C1-A-CASH', NULL),
('trans-col1-3', 100000.00, '2026-02-01', 'IN', 'C1-A-MOBILE-1', 'C1-M5'),
('trans-col1-4', 30000.00, '2026-02-20', 'OUT', 'C1-A-CASH', NULL),
('trans-col1-5', 75000.00, '2026-03-05', 'IN', 'C1-A-MOBILE-1', 'N1-M1'),
('trans-col1-6', 20000.00, '2026-03-25', 'OUT', 'C1-A-CASH', NULL),
('trans-col1-7', 150000.00, '2026-04-10', 'IN', 'C1-A-CASH', 'C1-M3'),
('trans-col1-8', 50000.00, '2026-05-01', 'OUT', 'C1-A-MOBILE-1', NULL),

('trans-col2-1', 100000.00, '2026-01-05', 'IN', 'C2-A-CASH', 'C2-M5'),
('trans-col2-2', 40000.00, '2026-01-20', 'OUT', 'C2-A-CASH', NULL),
('trans-col2-3', 80000.00, '2026-02-10', 'IN', 'C2-A-MOBILE-1', 'C2-M1'),
('trans-col2-4', 25000.00, '2026-02-28', 'OUT', 'C2-A-CASH', NULL),
('trans-col2-5', 120000.00, '2026-03-15', 'IN', 'C2-A-CASH', 'C2-M8'),
('trans-col2-6', 60000.00, '2026-04-05', 'OUT', 'C2-A-MOBILE-1', NULL),

('trans-col3-1', 75000.00, '2026-01-08', 'IN', 'C3-A-CASH', 'C3-M1'),
('trans-col3-2', 30000.00, '2026-01-22', 'OUT', 'C3-A-BANK-1', NULL),
('trans-col3-3', 200000.00, '2026-02-12', 'IN', 'C3-A-BANK-2', 'C3-M5'),
('trans-col3-4', 50000.00, '2026-02-26', 'OUT', 'C3-A-CASH', NULL),
('trans-col3-5', 60000.00, '2026-03-08', 'IN', 'C3-A-MOBILE-1', 'C3-M8'),
('trans-col3-6', 45000.00, '2026-03-22', 'OUT', 'C3-A-BANK-1', NULL),
('trans-col3-7', 180000.00, '2026-04-15', 'IN', 'C3-A-CASH', 'C3-M8'),
('trans-col3-8', 70000.00, '2026-05-05', 'OUT', 'C3-A-MOBILE-1', NULL);

-- ============================================================
-- 9. ACTIVITES
-- ============================================================

INSERT INTO activity (id, collectivity_id, label, activity_type, executive_date, week_ordinal, day_of_week, concerned_occupations) VALUES
-- Activités obligatoires collectivité 1
('act-col1-1', 'col-1', 'Assemblée générale mensuelle', 'MEETING', NULL, 2, 'SUNDAY', 'PRESIDENT,VICE_PRESIDENT,SECRETARY,TREASURER,SENIOR,JUNIOR'),
('act-col1-2', 'col-1', 'Formation obligatoire juniors', 'TRAINING', NULL, 4, 'SATURDAY', 'JUNIOR'),

('act-col1-3', 'col-1', 'Formation riziculture intensive', 'TRAINING', '2026-02-10', NULL, NULL, 'SENIOR,JUNIOR'),
('act-col1-4', 'col-1', 'Distribution de semences', 'OTHER', '2026-03-05', NULL, NULL, 'SENIOR,JUNIOR'),

('act-col2-1', 'col-2', 'Assemblée générale mensuelle', 'MEETING', NULL, 1, 'MONDAY', 'PRESIDENT,VICE_PRESIDENT,SECRETARY,TREASURER,SENIOR,JUNIOR'),
('act-col2-2', 'col-2', 'Formation obligatoire juniors', 'TRAINING', NULL, 3, 'WEDNESDAY', 'JUNIOR'),

('act-col2-3', 'col-2', 'Lâcher d alevins', 'OTHER', '2026-03-10', NULL, NULL, 'SENIOR'),

('act-col3-1', 'col-3', 'Assemblée générale mensuelle', 'MEETING', NULL, 3, 'WEDNESDAY', 'PRESIDENT,VICE_PRESIDENT,SECRETARY,TREASURER,SENIOR,JUNIOR'),
('act-col3-2', 'col-3', 'Formation obligatoire juniors', 'TRAINING', NULL, 2, 'TUESDAY', 'JUNIOR'),

('act-col3-3', 'col-3', 'Extraction de miel collective', 'OTHER', '2026-03-15', NULL, NULL, 'SENIOR'),
('act-col3-4', 'col-3', 'Marché du miel', 'OTHER', '2026-05-20', NULL, NULL, 'ALL');

-- ============================================================
-- 10. ASSIDUITE (PRESENCES AUX ACTIVITES)
-- ============================================================

INSERT INTO activity_member_attendance (activity_id, member_id, attendance_status) VALUES
-- Assemblée générale collectivité 1
('act-col1-1', 'C1-M1', 'ATTENDED'),
('act-col1-1', 'C1-M2', 'ATTENDED'),
('act-col1-1', 'C1-M3', 'ATTENDED'),
('act-col1-1', 'C1-M4', 'ATTENDED'),
('act-col1-1', 'C1-M5', 'ATTENDED'),
('act-col1-1', 'C1-M6', 'ATTENDED'),
('act-col1-1', 'C1-M7', 'MISSING'),
('act-col1-1', 'C1-M8', 'ATTENDED'),
('act-col1-1', 'N1-M1', 'ATTENDED'),
('act-col1-1', 'N1-M2', 'MISSING'),

('act-col1-2', 'C1-M5', 'ATTENDED'),
('act-col1-2', 'C1-M6', 'ATTENDED'),
('act-col1-2', 'C1-M7', 'MISSING'),
('act-col1-2', 'C1-M8', 'ATTENDED'),
('act-col1-2', 'N1-M1', 'ATTENDED'),
('act-col1-2', 'N1-M2', 'ATTENDED'),

('act-col1-3', 'C1-M5', 'ATTENDED'),
('act-col1-3', 'C1-M6', 'ATTENDED'),
('act-col1-3', 'C1-M7', 'MISSING'),
('act-col1-3', 'C1-M8', 'ATTENDED'),
('act-col1-3', 'N1-M1', 'ATTENDED'),
('act-col1-3', 'N1-M2', 'ATTENDED'),
('act-col2-1', 'C2-M1', 'ATTENDED'),
('act-col2-1', 'C2-M2', 'ATTENDED'),
('act-col2-1', 'C2-M3', 'ATTENDED'),
('act-col2-1', 'C2-M4', 'ATTENDED'),
('act-col2-1', 'C2-M5', 'ATTENDED'),
('act-col2-1', 'C2-M6', 'ATTENDED'),
('act-col2-1', 'C2-M7', 'MISSING'),
('act-col2-1', 'C2-M8', 'ATTENDED'),

('act-col3-1', 'C3-M1', 'ATTENDED'),
('act-col3-1', 'C3-M2', 'ATTENDED'),
('act-col3-1', 'C3-M3', 'ATTENDED'),
('act-col3-1', 'C3-M4', 'ATTENDED'),
('act-col3-1', 'C3-M5', 'ATTENDED'),
('act-col3-1', 'C3-M6', 'ATTENDED'),
('act-col3-1', 'C3-M7', 'MISSING'),
('act-col3-1', 'C3-M8', 'ATTENDED'),
('act-col3-1', 'N3-M1', 'ATTENDED'),
('act-col3-1', 'N3-M2', 'MISSING'),

('act-col3-2', 'C3-M5', 'ATTENDED'),
('act-col3-2', 'C3-M6', 'ATTENDED'),
('act-col3-2', 'C3-M7', 'MISSING'),
('act-col3-2', 'C3-M8', 'ATTENDED'),
('act-col3-2', 'N3-M1', 'ATTENDED'),
('act-col3-2', 'N3-M2', 'ATTENDED'),

('act-col3-3', 'C3-M5', 'ATTENDED'),
('act-col3-3', 'C3-M6', 'ATTENDED'),
('act-col3-3', 'C3-M7', 'MISSING'),
('act-col3-3', 'C3-M8', 'ATTENDED'),
('act-col3-3', 'N3-M1', 'ATTENDED'),
('act-col3-3', 'N3-M2', 'ATTENDED');