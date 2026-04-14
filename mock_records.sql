-- ValdesCare Mock Data Generator
-- Generated for Period: Dec 14, 2025 to April 14, 2026

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE consultation;
TRUNCATE TABLE patient;
TRUNCATE TABLE physician;
SET FOREIGN_KEY_CHECKS = 1;

-- Seed Mock Physicians
INSERT INTO physician (first_name, last_name, specialty, is_active) VALUES 
('Emiliano', 'Valdes', 'Internal Medicine', 1),
('Fe', 'Mundo', 'Pediatrics', 1),
('Jose', 'Perez', 'General Medicine', 1);

INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-040', 'Juan Dela Cruz', '1984-04-15', 'Adult', 'Female', '123 Rizal St., Brgy. San Jose, Valdes City', '09776981419', 'Head', 'No', 'NON-NHTS', 'Yes', '1298516293', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-028', 'Maria Clara', '1965-04-15', 'Geriatric', 'Female', '101 Luna St., Brgy. Cutcut, Valdes City', '09742936220', 'Head', 'No', 'NON-NHTS', 'Yes', '5686988362', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-098', 'Jose Rizal Santos', '1969-04-15', 'Adult', 'Male', '123 Rizal St., Brgy. San Jose, Valdes City', '09830904833', 'Head', 'Yes', 'NON-NHTS', 'Yes', '9870909383', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-071', 'Andres Bonifacio', '2013-04-15', 'Pediatric', 'Female', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09759596519', 'Head', 'No', 'NON-NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-090', 'Emilio Aguinaldo', '2013-04-15', 'Pediatric', 'Female', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09291219039', 'Head', 'Yes', 'NON-NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-095', 'Apolinario Mabini', '1992-04-15', 'Adult', 'Female', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09206280345', 'Head', 'No', 'NON-NHTS', 'Yes', '3421783151', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-097', 'Gabriela Silang', '1995-04-15', 'Adult', 'Female', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09981740836', 'Head', 'Yes', 'NON-NHTS', 'Yes', '4085983682', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-028', 'Melchora Aquino', '1998-04-15', 'Adult', 'Male', '101 Luna St., Brgy. Cutcut, Valdes City', '09853367918', 'Head', 'No', 'NON-NHTS', 'Yes', '6597198881', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-097', 'Marcelo H. Del Pilar', '2011-04-15', 'Pediatric', 'Male', '101 Luna St., Brgy. Cutcut, Valdes City', '09405944575', 'Head', 'No', 'NON-NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-067', 'Gregorio Del Pilar', '1978-04-15', 'Adult', 'Female', '123 Rizal St., Brgy. San Jose, Valdes City', '09206902852', 'Head', 'No', 'NHTS', 'Yes', '5957453049', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-022', 'Emilio Jacinto', '1995-04-15', 'Adult', 'Female', '101 Luna St., Brgy. Cutcut, Valdes City', '09782337948', 'Head', 'Yes', 'NON-NHTS', 'Yes', '8786032047', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-001', 'Antonio Luna', '1965-04-15', 'Geriatric', 'Male', '101 Luna St., Brgy. Cutcut, Valdes City', '09274096053', 'Head', 'No', 'NHTS', 'Yes', '2213201424', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-024', 'Juan Luna', '1991-04-15', 'Adult', 'Male', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09881625983', 'Head', 'No', 'NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-030', 'Lapu-Lapu', '1963-04-15', 'Geriatric', 'Male', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09495397447', 'Head', 'No', 'NHTS', 'Yes', '8544508391', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-085', 'Diego Silang', '1958-04-15', 'Geriatric', 'Male', '101 Luna St., Brgy. Cutcut, Valdes City', '09548383348', 'Head', 'Yes', 'NON-NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-030', 'Miguel Malvar', '1990-04-15', 'Adult', 'Female', '101 Luna St., Brgy. Cutcut, Valdes City', '09486353904', 'Head', 'No', 'NON-NHTS', 'Yes', '2585294235', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-026', 'Macario Sakay', '1975-04-15', 'Adult', 'Female', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09654103632', 'Head', 'Yes', 'NON-NHTS', 'Yes', '3988678209', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-040', 'Teresa Magbanua', '1961-04-15', 'Geriatric', 'Female', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09954137071', 'Head', 'No', 'NON-NHTS', 'Yes', '2684126406', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-034', 'Josefa Llanes Escoda', '1984-04-15', 'Adult', 'Male', '123 Rizal St., Brgy. San Jose, Valdes City', '09991139875', 'Head', 'Yes', 'NON-NHTS', 'Yes', '8681577833', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-043', 'Vicente Lim', '1974-04-15', 'Adult', 'Female', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09802164393', 'Head', 'No', 'NHTS', 'Yes', '8009643042', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-082', 'Ramon Magsaysay', '1960-04-15', 'Geriatric', 'Male', '123 Rizal St., Brgy. San Jose, Valdes City', '09622639910', 'Head', 'No', 'NON-NHTS', 'Yes', '5425345210', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-032', 'Ferdinand Marcos', '2003-04-15', 'Adult', 'Female', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09548523248', 'Head', 'No', 'NON-NHTS', 'Yes', '3174773265', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-015', 'Corazon Aquino', '2002-04-15', 'Adult', 'Female', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09112791421', 'Head', 'No', 'NON-NHTS', 'Yes', '8137079094', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-019', 'Fidel Ramos', '2012-04-15', 'Pediatric', 'Female', '123 Rizal St., Brgy. San Jose, Valdes City', '09594167276', 'Head', 'No', 'NHTS', 'Yes', '6818934472', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-023', 'Joseph Estrada', '1996-04-15', 'Adult', 'Female', '101 Luna St., Brgy. Cutcut, Valdes City', '09185265324', 'Head', 'Yes', 'NON-NHTS', 'Yes', '8759179305', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-093', 'Gloria Macapagal-Arroyo', '1987-04-15', 'Adult', 'Male', '101 Luna St., Brgy. Cutcut, Valdes City', '09878462231', 'Head', 'No', 'NON-NHTS', 'Yes', '7774493661', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-092', 'Benigno Aquino III', '1978-04-15', 'Adult', 'Female', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09596349875', 'Head', 'No', 'NHTS', 'Yes', '3725458101', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-015', 'Rodrigo Duterte', '1954-04-15', 'Geriatric', 'Female', '101 Luna St., Brgy. Cutcut, Valdes City', '09216488602', 'Head', 'Yes', 'NON-NHTS', 'Yes', '1251722547', 'Indigent', 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-078', 'Leni Robredo', '1974-04-15', 'Adult', 'Male', '456 Bonifacio Ave., Brgy. Sto. Rosario, Valdes City', '09931630296', 'Head', 'No', 'NON-NHTS', 'No', '', NULL, 'Not in School');
INSERT INTO patient (household_no, patient_name, dob, age_group, sex, address, mobile_no, relationship_to_head, is_ip, nhts_status, is_philhealth_member, philhealth_no, philhealth_category, school_status) VALUES ('HH-026', 'Manny Pacquiao', '1988-04-15', 'Adult', 'Male', '789 Mabini St., Brgy. San Nicolas, Valdes City', '09774090124', 'Head', 'No', 'NHTS', 'Yes', '8224020754', 'Indigent', 'Not in School');

-- Generating progression records...
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(1, '2025-12-15', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(1, '2025-12-17', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 3),
(1, '2025-12-21', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(1, '2025-12-23', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 3),
(1, '2025-12-26', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 2),
(1, '2025-12-26', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 1),
(1, '2025-12-26', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(1, '2025-12-27', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 2),
(1, '2025-12-29', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 3),
(1, '2026-01-04', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(1, '2026-01-05', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 2),
(1, '2026-01-07', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 1),
(1, '2026-01-08', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 2),
(1, '2026-01-09', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(1, '2026-01-21', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 1),
(1, '2026-01-29', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 1),
(1, '2026-02-04', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(1, '2026-02-06', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 1),
(1, '2026-02-13', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(1, '2026-02-14', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(1, '2026-02-17', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 1),
(1, '2026-02-20', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 2),
(1, '2026-02-25', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(1, '2026-02-26', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 3),
(1, '2026-02-27', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 3),
(1, '2026-03-03', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 2),
(1, '2026-03-05', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 3),
(1, '2026-03-09', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 3),
(1, '2026-03-19', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 1),
(1, '2026-03-27', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(1, '2026-03-28', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 1),
(1, '2026-04-03', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 3),
(1, '2026-04-12', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(2, '2025-12-16', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 1),
(2, '2025-12-18', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 2),
(2, '2025-12-20', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 3),
(2, '2025-12-20', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 1),
(2, '2026-01-17', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 2),
(2, '2026-01-24', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 1),
(2, '2026-01-27', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 2),
(2, '2026-02-13', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 3),
(2, '2026-02-26', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 2),
(2, '2026-03-11', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(2, '2026-03-15', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(2, '2026-03-23', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 2),
(2, '2026-03-29', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 2),
(2, '2026-04-03', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(3, '2025-12-16', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(3, '2025-12-16', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 3),
(3, '2025-12-17', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(3, '2025-12-21', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 3),
(3, '2026-01-23', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 1),
(3, '2026-02-10', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 3),
(3, '2026-03-08', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 1),
(3, '2026-03-18', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 1),
(3, '2026-03-20', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(3, '2026-04-08', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(4, '2026-01-10', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 2),
(4, '2026-01-11', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(4, '2026-01-13', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(4, '2026-01-17', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(4, '2026-01-20', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(4, '2026-02-02', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 3),
(4, '2026-02-04', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(4, '2026-02-09', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 3),
(4, '2026-02-15', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(4, '2026-02-18', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(4, '2026-02-19', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 3),
(4, '2026-02-19', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2),
(4, '2026-02-26', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(4, '2026-03-11', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 3),
(4, '2026-03-15', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(4, '2026-03-16', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 3),
(4, '2026-03-28', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 1),
(4, '2026-03-28', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2),
(4, '2026-03-29', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(4, '2026-03-29', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(4, '2026-04-02', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 3),
(4, '2026-04-06', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(5, '2025-12-17', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 1),
(5, '2025-12-18', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 2),
(5, '2025-12-19', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 1),
(5, '2025-12-26', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 3),
(5, '2025-12-27', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 2),
(5, '2025-12-29', 'Cough', 'Follow-up visit. Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Continuous tracking. Patient feels slightly better.', 3),
(5, '2025-12-31', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 2),
(5, '2026-01-02', 'Cough', 'Follow-up visit. Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Continuous tracking. Patient feels slightly better.', 1),
(5, '2026-01-04', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 3),
(5, '2026-01-05', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(5, '2026-01-06', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 3),
(5, '2026-01-07', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 3),
(5, '2026-01-08', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 2),
(5, '2026-01-16', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 2),
(5, '2026-01-17', 'Cough', 'Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'New episode of viral flu.', 2),
(5, '2026-01-17', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 2),
(5, '2026-01-24', 'Cough', 'Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'New episode of viral flu.', 1),
(5, '2026-02-03', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 2),
(5, '2026-02-03', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 2),
(5, '2026-02-04', 'Cough', 'Follow-up visit. Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Continuous tracking. Suspected mild secondary bacterial infection.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(5, '2026-02-04', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 3),
(5, '2026-02-06', 'Cough', 'Follow-up visit. Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Continuous tracking. Suspected mild secondary bacterial infection.', 3),
(5, '2026-02-06', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 3),
(5, '2026-02-11', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 1),
(5, '2026-02-19', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 2),
(5, '2026-02-19', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 1),
(5, '2026-02-20', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 1),
(5, '2026-02-20', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 2),
(5, '2026-02-28', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 2),
(5, '2026-03-09', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(5, '2026-03-10', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 3),
(5, '2026-03-11', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 3),
(5, '2026-03-12', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(5, '2026-03-13', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 2),
(5, '2026-03-14', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(5, '2026-03-15', 'Cough', 'Follow-up visit. Stable. Feeling well.', 'Common Cold', 'None.', 'Continuous tracking. Fully asymptomatic.', 3),
(5, '2026-03-20', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 2),
(5, '2026-03-24', 'Cough', 'Follow-up visit. Stable. Feeling well.', 'Common Cold', 'None.', 'Continuous tracking. Fully asymptomatic.', 3),
(5, '2026-03-25', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 1),
(5, '2026-03-27', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(5, '2026-04-03', 'Cough', 'Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Patient educated on flu prevention.', 3),
(5, '2026-04-05', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 3),
(5, '2026-04-13', 'Cough', 'Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Patient educated on flu prevention.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(6, '2025-12-23', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(6, '2025-12-25', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 3),
(6, '2026-01-10', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(6, '2026-01-21', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 1),
(6, '2026-01-30', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(6, '2026-01-30', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(6, '2026-02-17', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(6, '2026-02-22', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 2),
(6, '2026-02-26', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(6, '2026-03-02', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(6, '2026-03-08', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(6, '2026-03-11', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 1),
(6, '2026-03-14', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(6, '2026-03-27', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 3),
(6, '2026-03-27', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(6, '2026-04-10', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(7, '2025-12-14', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 2),
(7, '2025-12-17', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 2),
(7, '2025-12-19', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 3),
(7, '2026-01-02', 'Cough', 'Follow-up visit. Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Continuous tracking. Patient feels slightly better.', 2),
(7, '2026-01-24', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 2),
(7, '2026-01-26', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 1),
(7, '2026-02-05', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 3),
(7, '2026-02-12', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 3),
(7, '2026-02-18', 'Cough', 'Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'New episode of viral flu.', 3),
(7, '2026-02-21', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(7, '2026-02-25', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 2),
(7, '2026-02-25', 'Cough', 'Follow-up visit. Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Continuous tracking. Suspected mild secondary bacterial infection.', 1),
(7, '2026-03-03', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 2),
(7, '2026-03-03', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 3),
(7, '2026-03-04', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 1),
(7, '2026-03-16', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 1),
(7, '2026-03-21', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 2),
(7, '2026-03-25', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 3),
(7, '2026-03-25', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(7, '2026-03-26', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(7, '2026-04-04', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 3),
(7, '2026-04-06', 'Cough', 'Follow-up visit. Stable. Feeling well.', 'Common Cold', 'None.', 'Continuous tracking. Fully asymptomatic.', 1),
(7, '2026-04-08', 'Cough', 'Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Patient educated on flu prevention.', 3),
(7, '2026-04-12', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(8, '2025-12-27', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(8, '2026-01-04', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(8, '2026-01-12', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(8, '2026-01-19', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(8, '2026-01-23', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 1),
(8, '2026-01-27', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 3),
(8, '2026-02-03', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(8, '2026-02-06', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 3),
(8, '2026-02-07', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 2),
(8, '2026-02-09', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(8, '2026-02-11', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(8, '2026-02-16', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 1),
(8, '2026-02-17', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(8, '2026-02-18', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(8, '2026-03-07', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 1),
(8, '2026-03-16', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(8, '2026-03-18', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(8, '2026-03-26', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(9, '2025-12-15', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(9, '2025-12-19', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 2),
(9, '2025-12-19', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(9, '2025-12-24', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 3),
(9, '2026-01-04', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(9, '2026-01-08', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 3),
(9, '2026-01-22', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 3),
(9, '2026-01-23', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(9, '2026-02-09', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(9, '2026-02-27', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(9, '2026-03-01', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(9, '2026-03-03', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 1),
(9, '2026-03-18', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(9, '2026-03-18', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 3),
(9, '2026-03-25', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 2),
(9, '2026-03-27', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 2),
(9, '2026-03-31', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(9, '2026-03-31', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1),
(9, '2026-04-04', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 3),
(9, '2026-04-08', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(9, '2026-04-08', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(10, '2025-12-26', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 1),
(10, '2026-01-01', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 2),
(10, '2026-01-02', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 3),
(10, '2026-01-05', 'Cough', 'Follow-up visit. Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Continuous tracking. Patient feels slightly better.', 1),
(10, '2026-01-11', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 1),
(10, '2026-01-15', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 2),
(10, '2026-01-17', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 2),
(10, '2026-01-18', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 3),
(10, '2026-01-21', 'Cough', 'Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'New episode of viral flu.', 3),
(10, '2026-01-24', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(10, '2026-01-26', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 3),
(10, '2026-01-28', 'Cough', 'Follow-up visit. Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Continuous tracking. Suspected mild secondary bacterial infection.', 3),
(10, '2026-02-02', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 3),
(10, '2026-02-18', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 1),
(10, '2026-03-07', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 2),
(10, '2026-03-09', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 1),
(10, '2026-03-10', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 1),
(10, '2026-03-17', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 3),
(10, '2026-03-27', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(10, '2026-03-28', 'Cough', 'Follow-up visit. Stable. Feeling well.', 'Common Cold', 'None.', 'Continuous tracking. Fully asymptomatic.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(10, '2026-03-30', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 3),
(10, '2026-04-12', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 3),
(10, '2026-04-12', 'Cough', 'Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Patient educated on flu prevention.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(11, '2025-12-14', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 3),
(11, '2025-12-16', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 2),
(11, '2025-12-28', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 2),
(11, '2025-12-29', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 1),
(11, '2025-12-31', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 1),
(11, '2026-01-02', 'Skin Rash', 'Follow-up visit. Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Continuous tracking. Partial resolution.', 2),
(11, '2026-01-10', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 2),
(11, '2026-01-10', 'Skin Rash', 'Follow-up visit. Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Continuous tracking. Partial resolution.', 2),
(11, '2026-01-12', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 3),
(11, '2026-01-17', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(11, '2026-01-24', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 3),
(11, '2026-01-25', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 3),
(11, '2026-01-25', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 3),
(11, '2026-01-30', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 1),
(11, '2026-02-01', 'Skin Rash', 'Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Full recovery. Prevention advised.', 2),
(11, '2026-02-02', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 3),
(11, '2026-02-02', 'Skin Rash', 'Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Full recovery. Prevention advised.', 2),
(11, '2026-02-06', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 1),
(11, '2026-02-07', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 2),
(11, '2026-02-12', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(11, '2026-02-16', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 2),
(11, '2026-02-17', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 1),
(11, '2026-02-18', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 2),
(11, '2026-02-24', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 3),
(11, '2026-03-01', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 1),
(11, '2026-03-02', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 3),
(11, '2026-03-08', 'Skin Rash', 'Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Successful re-treatment.', 3),
(11, '2026-03-10', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 1),
(11, '2026-03-15', 'Skin Rash', 'Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Successful re-treatment.', 1),
(11, '2026-03-17', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(11, '2026-03-22', 'Skin Rash', 'Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Clear.', 3),
(11, '2026-03-24', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 3),
(11, '2026-03-24', 'Skin Rash', 'Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Clear.', 1),
(11, '2026-03-28', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 2),
(11, '2026-03-29', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 1),
(11, '2026-03-29', 'Skin Rash', 'Follow-up visit. Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Stable.', 2),
(11, '2026-04-01', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 3),
(11, '2026-04-03', 'Skin Rash', 'Follow-up visit. Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Stable.', 3),
(11, '2026-04-05', 'Skin Rash', 'Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Discharged from skin monitoring.', 1),
(11, '2026-04-05', 'Skin Rash', 'Follow-up visit. Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Discharged from skin monitoring.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(11, '2026-04-11', 'Skin Rash', 'Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Discharged from skin monitoring.', 1),
(11, '2026-04-11', 'Skin Rash', 'Follow-up visit. Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Discharged from skin monitoring.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(12, '2025-12-23', 'Cough', 'Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Likely viral upper respiratory infection. Rest advised.', 1),
(12, '2026-01-05', 'Cough', 'Follow-up visit. Sneezing, runny nose, mild throat itchiness', 'Common Cold', 'Prescribed Cetirizine 10mg OD. Vitamin C 500mg. Drink plenty of water.', 'Continuous tracking. Likely viral upper respiratory infection. Rest advised.', 1),
(12, '2026-01-13', 'Cough', 'Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Patient feels slightly better.', 3),
(12, '2026-01-15', 'Cough', 'Follow-up visit. Slight dry cough, no fever', 'Common Cold', 'Continue Vitamin C. Added Ambroxol 30mg TID for cough.', 'Continuous tracking. Patient feels slightly better.', 2),
(12, '2026-01-18', 'Cough', 'No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Recovery complete.', 1),
(12, '2026-01-27', 'Cough', 'Follow-up visit. No symptoms. Routine vitamin refill', 'Common Cold', 'Refilled Multivitamins.', 'Continuous tracking. Recovery complete.', 1),
(12, '2026-02-12', 'Cough', 'Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'New episode of viral flu.', 1),
(12, '2026-02-19', 'Cough', 'Follow-up visit. Recurrence of symptoms after rainy travel: Feverish, sore throat', 'Common Cold', 'Paracetamol 500mg PRN. Gargle with warm salt water.', 'Continuous tracking. New episode of viral flu.', 2),
(12, '2026-02-27', 'Cough', 'Productive cough, yellowish phlegm', 'Common Cold', 'Amoxicillin 500mg TID for 7 days. Continue hydration.', 'Suspected mild secondary bacterial infection.', 3),
(12, '2026-03-08', 'Cough', 'Follow-up visit. Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Continuous tracking. Compliance is good.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(12, '2026-03-09', 'Cough', 'Cough improving, still feels weak', 'Common Cold', 'Continue Antibiotics. Rest.', 'Compliance is good.', 1),
(12, '2026-03-18', 'Cough', 'Follow-up visit. Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Continuous tracking. Back to healthy baseline.', 2),
(12, '2026-03-28', 'Cough', 'Resolved. Throat clear.', 'Common Cold', 'Vitamins only.', 'Back to healthy baseline.', 1),
(12, '2026-03-28', 'Cough', 'Follow-up visit. Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Continuous tracking. Seasonal allergy management.', 3),
(12, '2026-04-06', 'Cough', 'Minor nasal congestion due to allergens', 'Common Cold', 'Loratadine 10mg OD.', 'Seasonal allergy management.', 3),
(12, '2026-04-10', 'Cough', 'Follow-up visit. Stable. Feeling well.', 'Common Cold', 'None.', 'Continuous tracking. Fully asymptomatic.', 1),
(12, '2026-04-11', 'Cough', 'Stable. Feeling well.', 'Common Cold', 'None.', 'Fully asymptomatic.', 2),
(12, '2026-04-12', 'Cough', 'Follow-up visit. Routine visit. Clean bill of health.', 'Common Cold', 'Stay hydrated.', 'Continuous tracking. Patient educated on flu prevention.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(13, '2025-12-22', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 3),
(13, '2025-12-22', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 3),
(13, '2025-12-24', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 2),
(13, '2025-12-30', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 3),
(13, '2026-01-11', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 1),
(13, '2026-01-24', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 3),
(13, '2026-02-14', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 2),
(13, '2026-02-19', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 3),
(13, '2026-02-20', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 1),
(13, '2026-03-14', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(13, '2026-03-22', 'Skin Rash', 'Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Successful re-treatment.', 1),
(13, '2026-03-28', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 1),
(13, '2026-04-03', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 2),
(13, '2026-04-06', 'Skin Rash', 'Follow-up visit. Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Stable.', 3),
(13, '2026-04-11', 'Skin Rash', 'Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Discharged from skin monitoring.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(14, '2025-12-15', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(14, '2025-12-30', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 1),
(14, '2025-12-31', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(14, '2025-12-31', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(14, '2026-01-02', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(14, '2026-01-03', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(14, '2026-01-04', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(14, '2026-01-05', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(14, '2026-01-11', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(14, '2026-01-12', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(14, '2026-01-16', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(14, '2026-01-17', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1),
(14, '2026-01-23', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 3),
(14, '2026-02-02', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2),
(14, '2026-02-04', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(14, '2026-02-07', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2),
(14, '2026-02-07', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(14, '2026-02-09', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 1),
(14, '2026-02-14', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 3),
(14, '2026-02-16', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(14, '2026-02-18', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 1),
(14, '2026-02-21', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 3),
(14, '2026-02-22', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 1),
(14, '2026-02-23', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2),
(14, '2026-02-24', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(14, '2026-02-26', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2),
(14, '2026-03-04', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(14, '2026-03-05', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2),
(14, '2026-03-06', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(14, '2026-03-06', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(14, '2026-03-07', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(14, '2026-03-12', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(14, '2026-03-12', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 3),
(14, '2026-03-13', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2),
(14, '2026-03-19', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(14, '2026-03-21', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2),
(14, '2026-03-26', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 3),
(14, '2026-04-05', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3),
(14, '2026-04-06', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2),
(14, '2026-04-11', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(15, '2026-01-04', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(15, '2026-01-19', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 2),
(15, '2026-01-19', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 2),
(15, '2026-01-29', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 1),
(15, '2026-02-05', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(15, '2026-02-09', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(15, '2026-02-13', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(15, '2026-02-21', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 3),
(15, '2026-03-15', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(15, '2026-03-20', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(15, '2026-04-10', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(15, '2026-04-10', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 3),
(15, '2026-04-11', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 3),
(15, '2026-04-11', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 3),
(15, '2026-04-12', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(16, '2025-12-18', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 3),
(16, '2025-12-19', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 3),
(16, '2025-12-24', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 2),
(16, '2025-12-24', 'Skin Rash', 'Follow-up visit. Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Continuous tracking. Partial resolution.', 3),
(16, '2025-12-27', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 2),
(16, '2026-01-01', 'Skin Rash', 'Follow-up visit. Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Continuous tracking. Partial resolution.', 3),
(16, '2026-01-04', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 3),
(16, '2026-01-10', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 3),
(16, '2026-01-10', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 2),
(16, '2026-01-12', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(16, '2026-01-20', 'Skin Rash', 'Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Full recovery. Prevention advised.', 2),
(16, '2026-02-01', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 2),
(16, '2026-02-06', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 2),
(16, '2026-02-07', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 3),
(16, '2026-02-20', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 2),
(16, '2026-03-02', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 2),
(16, '2026-03-09', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 3),
(16, '2026-03-16', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 2),
(16, '2026-03-16', 'Skin Rash', 'Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Successful re-treatment.', 3),
(16, '2026-03-16', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(16, '2026-03-18', 'Skin Rash', 'Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Clear.', 3),
(16, '2026-03-18', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 3),
(16, '2026-03-30', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 2),
(16, '2026-04-04', 'Skin Rash', 'Follow-up visit. Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Stable.', 1),
(16, '2026-04-08', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 2),
(16, '2026-04-08', 'Skin Rash', 'Follow-up visit. Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Discharged from skin monitoring.', 1),
(16, '2026-04-11', 'Skin Rash', 'Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Discharged from skin monitoring.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(17, '2025-12-21', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(17, '2025-12-26', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(17, '2026-01-13', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(17, '2026-01-18', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2),
(17, '2026-02-06', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 2),
(17, '2026-02-11', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 3),
(17, '2026-02-19', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(17, '2026-02-21', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(17, '2026-03-06', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 3),
(17, '2026-03-26', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(18, '2025-12-14', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(18, '2025-12-15', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 1),
(18, '2025-12-16', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(18, '2025-12-16', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 2),
(18, '2025-12-16', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(18, '2025-12-23', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 1),
(18, '2025-12-27', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(18, '2025-12-31', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 3),
(18, '2026-01-05', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 1),
(18, '2026-01-14', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(18, '2026-01-16', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 2),
(18, '2026-01-17', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 3),
(18, '2026-01-20', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(18, '2026-01-24', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 2),
(18, '2026-02-01', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(18, '2026-02-19', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2),
(18, '2026-03-01', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 3),
(18, '2026-03-06', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 2),
(18, '2026-03-07', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 1),
(18, '2026-03-07', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(18, '2026-03-08', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(18, '2026-03-08', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 1),
(18, '2026-03-10', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(18, '2026-03-10', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1),
(18, '2026-03-25', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(18, '2026-03-25', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 3),
(18, '2026-04-01', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 3),
(18, '2026-04-04', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(19, '2025-12-14', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(19, '2025-12-16', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 1),
(19, '2025-12-16', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(19, '2025-12-16', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(19, '2025-12-19', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(19, '2025-12-23', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(19, '2025-12-24', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(19, '2025-12-30', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(19, '2026-01-03', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(19, '2026-01-04', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(19, '2026-01-13', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(19, '2026-01-14', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1),
(19, '2026-01-15', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 1),
(19, '2026-01-21', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1),
(19, '2026-02-01', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(19, '2026-02-07', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(19, '2026-02-09', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 3),
(19, '2026-02-11', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(19, '2026-02-11', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(19, '2026-02-13', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(19, '2026-02-13', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(19, '2026-02-21', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3),
(19, '2026-02-23', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 2),
(19, '2026-02-26', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 3),
(19, '2026-02-28', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(19, '2026-03-02', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(19, '2026-03-04', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(19, '2026-03-08', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2),
(19, '2026-03-18', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(19, '2026-03-20', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(19, '2026-03-24', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 2),
(19, '2026-03-24', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 3),
(19, '2026-03-24', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(19, '2026-03-26', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2),
(19, '2026-03-26', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 2),
(19, '2026-03-27', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(19, '2026-04-01', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 3),
(19, '2026-04-01', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(19, '2026-04-01', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(19, '2026-04-03', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(19, '2026-04-04', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 1),
(19, '2026-04-06', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 1),
(19, '2026-04-06', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2),
(19, '2026-04-09', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(20, '2025-12-14', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 2),
(20, '2025-12-15', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 1),
(20, '2025-12-16', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(20, '2025-12-20', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 2),
(20, '2025-12-20', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(20, '2026-01-01', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 2),
(20, '2026-01-01', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(20, '2026-01-06', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 2),
(20, '2026-01-09', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 3),
(20, '2026-01-13', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(20, '2026-02-01', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 3),
(20, '2026-02-02', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 1),
(20, '2026-02-04', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(20, '2026-02-09', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2),
(20, '2026-02-09', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(20, '2026-02-13', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2),
(20, '2026-02-14', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(20, '2026-02-16', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 3),
(20, '2026-02-22', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(20, '2026-03-01', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(20, '2026-03-11', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(20, '2026-03-12', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 2),
(20, '2026-03-15', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(20, '2026-03-24', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1),
(20, '2026-04-06', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 1),
(20, '2026-04-12', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(21, '2025-12-15', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(21, '2025-12-30', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 3),
(21, '2025-12-30', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(21, '2026-01-03', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 1),
(21, '2026-01-04', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(21, '2026-01-05', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 2),
(21, '2026-01-09', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(21, '2026-01-11', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 2),
(21, '2026-01-17', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(21, '2026-01-18', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(21, '2026-01-21', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 2),
(21, '2026-01-22', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 1),
(21, '2026-01-27', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(21, '2026-02-05', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 1),
(21, '2026-02-07', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 1),
(21, '2026-02-10', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 2),
(21, '2026-02-13', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 2),
(21, '2026-02-23', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2),
(21, '2026-03-02', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 2),
(21, '2026-03-02', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(21, '2026-03-03', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 2),
(21, '2026-03-07', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 1),
(21, '2026-03-12', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 2),
(21, '2026-03-15', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 2),
(21, '2026-03-17', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 3),
(21, '2026-03-22', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 3),
(21, '2026-03-31', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(21, '2026-04-04', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1),
(21, '2026-04-05', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(21, '2026-04-08', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(21, '2026-04-10', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 2),
(21, '2026-04-11', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(22, '2025-12-18', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(22, '2025-12-19', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 2),
(22, '2025-12-21', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(22, '2025-12-23', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 1),
(22, '2025-12-24', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(22, '2025-12-26', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(22, '2026-01-02', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(22, '2026-01-06', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(22, '2026-01-15', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(22, '2026-01-17', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(22, '2026-01-18', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(22, '2026-01-24', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(22, '2026-02-07', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(22, '2026-02-09', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 3),
(22, '2026-02-16', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 3),
(22, '2026-03-02', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3),
(22, '2026-03-05', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 2),
(22, '2026-03-08', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 2),
(22, '2026-03-09', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(22, '2026-03-09', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(22, '2026-03-10', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 1),
(22, '2026-03-11', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(22, '2026-03-14', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(22, '2026-03-14', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 3),
(22, '2026-03-15', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(22, '2026-03-24', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 3),
(22, '2026-03-27', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 1),
(22, '2026-03-29', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2),
(22, '2026-03-30', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 2),
(22, '2026-03-31', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(22, '2026-04-02', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(22, '2026-04-04', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(22, '2026-04-04', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 3),
(22, '2026-04-06', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 1),
(22, '2026-04-08', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2),
(22, '2026-04-10', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(23, '2025-12-14', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(23, '2025-12-17', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(23, '2025-12-21', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(23, '2025-12-27', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 2),
(23, '2026-01-06', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 1),
(23, '2026-01-08', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 3),
(23, '2026-01-08', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(23, '2026-01-21', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(23, '2026-01-22', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(23, '2026-01-23', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(23, '2026-01-24', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(23, '2026-01-26', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 2),
(23, '2026-01-29', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(23, '2026-01-29', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2),
(23, '2026-02-01', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(23, '2026-02-01', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(23, '2026-02-06', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 3),
(23, '2026-02-07', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3),
(23, '2026-02-10', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(23, '2026-02-17', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(23, '2026-02-19', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(23, '2026-02-26', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(23, '2026-02-28', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(23, '2026-03-02', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(23, '2026-03-02', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 2),
(23, '2026-03-04', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2),
(23, '2026-03-07', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 2),
(23, '2026-03-10', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 1),
(23, '2026-03-22', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 1),
(23, '2026-03-24', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(23, '2026-03-27', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(23, '2026-03-30', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(23, '2026-03-30', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(23, '2026-03-30', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2),
(23, '2026-04-01', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(23, '2026-04-05', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(23, '2026-04-06', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 1),
(23, '2026-04-07', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 2),
(23, '2026-04-11', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(24, '2025-12-16', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 2),
(24, '2025-12-25', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(24, '2025-12-28', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 2),
(24, '2026-01-02', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 2),
(24, '2026-01-06', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(24, '2026-01-08', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(24, '2026-01-08', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(24, '2026-01-11', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(24, '2026-01-11', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(24, '2026-01-12', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(24, '2026-01-15', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(24, '2026-01-25', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 2),
(24, '2026-01-27', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(24, '2026-01-27', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(24, '2026-01-28', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 3),
(24, '2026-01-29', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(24, '2026-01-30', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(24, '2026-02-01', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 1),
(24, '2026-02-01', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(24, '2026-02-02', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(24, '2026-02-07', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 1),
(24, '2026-02-15', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2),
(24, '2026-02-18', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(24, '2026-02-19', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 3),
(24, '2026-02-19', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(24, '2026-02-19', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 2),
(24, '2026-02-20', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 2),
(24, '2026-02-22', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 3),
(24, '2026-02-23', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(24, '2026-02-25', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(24, '2026-03-03', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(24, '2026-03-07', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 1),
(24, '2026-03-17', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(24, '2026-03-20', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 1),
(24, '2026-03-26', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(24, '2026-03-29', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 2),
(24, '2026-03-30', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 1),
(24, '2026-04-01', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3),
(24, '2026-04-04', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(25, '2025-12-14', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(25, '2025-12-20', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 2),
(25, '2025-12-20', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 1),
(25, '2025-12-23', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 1),
(25, '2025-12-25', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 2),
(25, '2025-12-28', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 3),
(25, '2026-01-01', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 1),
(25, '2026-01-01', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 2),
(25, '2026-01-01', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 3),
(25, '2026-01-01', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(25, '2026-01-03', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(25, '2026-01-16', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 3),
(25, '2026-01-16', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(25, '2026-01-20', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 2),
(25, '2026-01-20', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(25, '2026-01-21', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 1),
(25, '2026-01-21', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(25, '2026-01-29', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 3),
(25, '2026-01-30', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 1),
(25, '2026-02-05', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(25, '2026-02-08', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 2),
(25, '2026-02-09', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 2),
(25, '2026-02-13', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(25, '2026-02-17', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 1),
(25, '2026-02-28', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 2),
(25, '2026-03-01', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 2),
(25, '2026-03-06', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(25, '2026-03-09', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 2),
(25, '2026-03-19', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 1),
(25, '2026-03-25', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(25, '2026-03-29', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 2),
(25, '2026-04-05', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(26, '2025-12-14', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 2),
(26, '2025-12-15', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 1),
(26, '2025-12-16', 'Stomach ache', 'Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Suspected Acid Reflux (GERD).', 3),
(26, '2025-12-21', 'Stomach ache', 'Follow-up visit. Burning sensation in the chest, sour taste in mouth.', 'Acid Reflux (GERD)', 'Omeprazole 20mg OD (30 mins before breakfast). Avoid coffee/spicy food.', 'Continuous tracking. Suspected Acid Reflux (GERD).', 2),
(26, '2025-12-21', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 3),
(26, '2025-12-23', 'Stomach ache', 'Follow-up visit. Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Continuous tracking. Lifestyle adjustment required.', 1),
(26, '2025-12-27', 'Stomach ache', 'Feeling better. Reflux only happens when lying down after dinner.', 'Acid Reflux (GERD)', 'Maintain Omeprazole. Advised not to lie down for 2 hrs after eating.', 'Lifestyle adjustment required.', 3),
(26, '2025-12-27', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 1),
(26, '2025-12-30', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 3),
(26, '2026-01-01', 'Stomach ache', 'Follow-up visit. Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Continuous tracking. Improving.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(26, '2026-01-07', 'Stomach ache', 'Stable. No heartburn.', 'Acid Reflux (GERD)', 'Tapering Omeprazole to PRN.', 'Improving.', 2),
(26, '2026-01-08', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(26, '2026-01-12', 'Stomach ache', 'Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Dietary flare-up.', 1),
(26, '2026-01-13', 'Stomach ache', 'Follow-up visit. Mild bloating after eating gata dishes.', 'Acid Reflux (GERD)', 'Simethicone PRN. Continue diet avoidance.', 'Continuous tracking. Dietary flare-up.', 2),
(26, '2026-01-15', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(26, '2026-01-15', 'Stomach ache', 'Follow-up visit. Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Continuous tracking. Managed.', 3),
(26, '2026-01-16', 'Stomach ache', 'Bloating resolved.', 'Acid Reflux (GERD)', 'Stay on bland diet for 3 days.', 'Managed.', 3),
(26, '2026-01-27', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 2),
(26, '2026-02-02', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 2),
(26, '2026-02-05', 'Stomach ache', 'Follow-up visit. Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Stable.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(26, '2026-02-08', 'Stomach ache', 'Feeling normal. No antacids needed for a week.', 'Acid Reflux (GERD)', 'None.', 'Stable.', 3),
(26, '2026-02-14', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 3),
(26, '2026-02-15', 'Stomach ache', 'Stable.', 'Acid Reflux (GERD)', 'None.', 'Checkup.', 3),
(26, '2026-02-16', 'Stomach ache', 'Follow-up visit. Stable.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Checkup.', 2),
(26, '2026-03-05', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 1),
(26, '2026-03-06', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 2),
(26, '2026-03-18', 'Stomach ache', 'Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Psychosomatic factor.', 3),
(26, '2026-03-18', 'Stomach ache', 'Follow-up visit. Occasional stress-induced stomach ache.', 'Acid Reflux (GERD)', 'Warm water, relaxation.', 'Continuous tracking. Psychosomatic factor.', 3),
(26, '2026-03-22', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 2),
(26, '2026-03-23', 'Stomach ache', 'Follow-up visit. No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Asymptomatic.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(26, '2026-03-25', 'Stomach ache', 'No symptoms.', 'Acid Reflux (GERD)', 'None.', 'Asymptomatic.', 3),
(26, '2026-03-27', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 2),
(26, '2026-03-29', 'Stomach ache', 'Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Case closed.', 1),
(26, '2026-04-02', 'Stomach ache', 'Follow-up visit. Full recovery. Patient learned dietary triggers.', 'Acid Reflux (GERD)', 'None.', 'Continuous tracking. Case closed.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(27, '2025-12-17', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 1),
(27, '2025-12-19', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 2),
(27, '2025-12-22', 'Skin Rash', 'Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Fungal skin infection. Non-infectious to others via touch.', 3),
(27, '2025-12-28', 'Skin Rash', 'Follow-up visit. Itchy, red circular rashes on the back/arms.', 'Skin Infection (Tinea)', 'Clotrimazole Cream BID. Advised keeping area dry.', 'Continuous tracking. Fungal skin infection. Non-infectious to others via touch.', 3),
(27, '2026-01-04', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 2),
(27, '2026-01-07', 'Skin Rash', 'Follow-up visit. Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Continuous tracking. Partial resolution.', 2),
(27, '2026-01-11', 'Skin Rash', 'Itching significantly reduced. Redness fading.', 'Skin Infection (Tinea)', 'Continue Cream for 7 more days. Do not scratch.', 'Partial resolution.', 1),
(27, '2026-01-14', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 2),
(27, '2026-01-15', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 2),
(27, '2026-01-15', 'Skin Rash', 'Follow-up visit. Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Continuous tracking. Healing.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(27, '2026-01-19', 'Skin Rash', 'Rashes almost gone. Hypopigmented spots left.', 'Skin Infection (Tinea)', 'Continue topical.', 'Healing.', 1),
(27, '2026-01-21', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 2),
(27, '2026-01-27', 'Skin Rash', 'Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Full recovery. Prevention advised.', 3),
(27, '2026-01-28', 'Skin Rash', 'Follow-up visit. Skin cleared. Occasional itch when sweating.', 'Skin Infection (Tinea)', 'Miconazole powder for shoes/socks.', 'Continuous tracking. Full recovery. Prevention advised.', 1),
(27, '2026-02-01', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 1),
(27, '2026-02-06', 'Skin Rash', 'Follow-up visit. Stable skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. No active lesions.', 2),
(27, '2026-02-09', 'Skin Rash', 'Stable skin.', 'Skin Infection (Tinea)', 'None.', 'No active lesions.', 2),
(27, '2026-02-11', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 2),
(27, '2026-02-15', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 3),
(27, '2026-03-01', 'Skin Rash', 'Follow-up visit. Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Continuous tracking. Reinforced hygiene counseling.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(27, '2026-03-01', 'Skin Rash', 'Minor recurrence due to gym use/sweating.', 'Skin Infection (Tinea)', 'Resume Clotrimazole Cream.', 'Reinforced hygiene counseling.', 3),
(27, '2026-03-05', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 1),
(27, '2026-03-05', 'Skin Rash', 'Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Successful re-treatment.', 3),
(27, '2026-03-08', 'Skin Rash', 'Follow-up visit. Cleared again.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Successful re-treatment.', 2),
(27, '2026-03-09', 'Skin Rash', 'Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Clear.', 1),
(27, '2026-03-09', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 3),
(27, '2026-03-18', 'Skin Rash', 'Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Clear.', 1),
(27, '2026-03-18', 'Skin Rash', 'Follow-up visit. Follow up. No new lesions.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Clear.', 2),
(27, '2026-03-21', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 2),
(27, '2026-03-24', 'Skin Rash', 'Follow-up visit. Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Stable.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(27, '2026-03-30', 'Skin Rash', 'Routine checkup.', 'Skin Infection (Tinea)', 'None.', 'Stable.', 3),
(27, '2026-03-31', 'Skin Rash', 'Follow-up visit. Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Discharged from skin monitoring.', 2),
(27, '2026-04-07', 'Skin Rash', 'Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Discharged from skin monitoring.', 2),
(27, '2026-04-08', 'Skin Rash', 'Follow-up visit. Healthy skin.', 'Skin Infection (Tinea)', 'None.', 'Continuous tracking. Discharged from skin monitoring.', 1);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(28, '2025-12-18', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(28, '2025-12-19', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 3),
(28, '2025-12-22', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 3),
(28, '2025-12-28', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(28, '2026-01-02', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(28, '2026-01-05', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 2),
(28, '2026-01-11', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(28, '2026-01-16', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2),
(28, '2026-01-18', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 2),
(28, '2026-01-20', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(28, '2026-01-22', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 1),
(28, '2026-02-04', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(28, '2026-02-17', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 2),
(28, '2026-03-03', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 3),
(28, '2026-03-05', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(28, '2026-03-10', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 3),
(28, '2026-03-19', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 1),
(28, '2026-03-24', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(28, '2026-03-27', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 2),
(28, '2026-03-28', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(29, '2025-12-14', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(29, '2025-12-15', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 2),
(29, '2025-12-23', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(29, '2025-12-27', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(29, '2026-01-04', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 2),
(29, '2026-01-05', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(29, '2026-01-06', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 2),
(29, '2026-01-11', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1),
(29, '2026-01-12', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(29, '2026-01-12', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(29, '2026-01-17', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 2),
(29, '2026-01-22', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 1),
(29, '2026-01-24', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 3),
(29, '2026-01-28', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2),
(29, '2026-01-31', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(29, '2026-02-02', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(29, '2026-02-07', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(29, '2026-02-08', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 1),
(29, '2026-02-19', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(29, '2026-02-25', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(29, '2026-03-06', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(29, '2026-03-07', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(29, '2026-03-10', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 3),
(29, '2026-03-22', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(29, '2026-03-24', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 1),
(29, '2026-03-29', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(30, '2025-12-15', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 1),
(30, '2025-12-26', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 1),
(30, '2025-12-30', 'Dizziness', 'BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Stage 1 Hypertension. OPD monitoring.', 3),
(30, '2025-12-31', 'Dizziness', 'Follow-up visit. BP 150/90. Occasional nape pain after salty meals.', 'Hypertension', 'Amlodipine 5mg OD. Advised low-salt, low-fat diet.', 'Continuous tracking. Stage 1 Hypertension. OPD monitoring.', 2),
(30, '2026-01-05', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 1),
(30, '2026-01-06', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 2),
(30, '2026-01-11', 'Dizziness', 'BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Stabilizing. Patient compliant.', 1),
(30, '2026-01-12', 'Dizziness', 'Follow-up visit. BP 140/85. Nape pain reduced.', 'Hypertension', 'Continue Amlodipine. Provided diet chart.', 'Continuous tracking. Stabilizing. Patient compliant.', 1),
(30, '2026-01-19', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 3),
(30, '2026-01-28', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(30, '2026-01-31', 'Dizziness', 'BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Excellent BP control.', 1),
(30, '2026-02-01', 'Dizziness', 'Follow-up visit. BP 130/80. No complaints.', 'Hypertension', 'Maintain current meds.', 'Continuous tracking. Excellent BP control.', 1),
(30, '2026-02-03', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 3),
(30, '2026-02-06', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 1),
(30, '2026-02-06', 'Dizziness', 'BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Lifestyle-induced BP spike.', 1),
(30, '2026-02-09', 'Dizziness', 'Follow-up visit. BP 145/90. Reported eating at a fiesta.', 'Hypertension', 'Counseling on diet during holidays. Maintain meds.', 'Continuous tracking. Lifestyle-induced BP spike.', 3),
(30, '2026-02-09', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 1),
(30, '2026-02-10', 'Dizziness', 'Follow-up visit. BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Continuous tracking. Return to baseline.', 2),
(30, '2026-02-10', 'Dizziness', 'BP 135/85. Feeling better.', 'Hypertension', 'Continue Amlodipine.', 'Return to baseline.', 2),
(30, '2026-02-11', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(30, '2026-02-12', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(30, '2026-02-26', 'Dizziness', 'Follow-up visit. BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Continuous tracking. Stable maintenance.', 1),
(30, '2026-03-02', 'Dizziness', 'BP 125/80. No dizziness.', 'Hypertension', 'Prescription refill for 2 months.', 'Stable maintenance.', 3),
(30, '2026-03-05', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 1),
(30, '2026-03-11', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 1),
(30, '2026-03-14', 'Dizziness', 'Follow-up visit. BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Continuous tracking. Good progress with exercise.', 1),
(30, '2026-03-14', 'Dizziness', 'BP 120/80. Weight down by 1kg.', 'Hypertension', 'Encouraged walking 30 mins daily.', 'Good progress with exercise.', 3),
(30, '2026-03-15', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2),
(30, '2026-03-20', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 1),
(30, '2026-03-22', 'Dizziness', 'Follow-up visit. BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Continuous tracking. Still within target range.', 2);
INSERT INTO consultation (patient_id, visit_date, chief_complaint, complaint_details, diagnosis, treatment, remarks, physician_id) VALUES
(30, '2026-03-26', 'Dizziness', 'BP 128/82. Routine checkup.', 'Hypertension', 'None.', 'Still within target range.', 3),
(30, '2026-03-27', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 3),
(30, '2026-03-28', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(30, '2026-03-29', 'Dizziness', 'Follow-up visit. BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Continuous tracking. Maintenance check.', 1),
(30, '2026-04-04', 'Dizziness', 'BP 130/80. Refill request.', 'Hypertension', 'Amlodipine refilled.', 'Maintenance check.', 2),
(30, '2026-04-09', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 3),
(30, '2026-04-12', 'Dizziness', 'BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Maintenance is effective.', 3),
(30, '2026-04-12', 'Dizziness', 'Follow-up visit. BP 120/80. No signs of retinopathy or edema.', 'Hypertension', 'Continue current plan.', 'Continuous tracking. Maintenance is effective.', 2);
