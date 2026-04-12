-- ============================================================
-- ValdesCare Clinical Decision Support System
-- Database Schema — Step 1
-- Target: MySQL 5.7+ / MariaDB 10.x (via XAMPP / phpMyAdmin)
-- ============================================================

-- Create and select the database
CREATE DATABASE IF NOT EXISTS valdescare
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE valdescare;

-- ============================================================
-- TABLE: household
-- Represents a family unit / address node.
-- is_ip   = Indigenous People tag
-- is_nhts = National Household Targeting System (4Ps) tag
-- ============================================================
CREATE TABLE IF NOT EXISTS household (
    household_id   INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    barangay       VARCHAR(100)    NOT NULL,
    street_address VARCHAR(255)    NOT NULL,
    municipality   VARCHAR(100)    NOT NULL DEFAULT 'Valdes City',
    is_ip          TINYINT(1)      NOT NULL DEFAULT 0  COMMENT '1 = Indigenous People household',
    is_nhts        TINYINT(1)      NOT NULL DEFAULT 0  COMMENT '1 = NHTS / 4Ps registered household',
    created_at     TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (household_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- TABLE: patient
-- Individual patient record, linked to a household.
-- school_status: 'enrolled', 'out_of_school', 'not_applicable'
-- ============================================================
CREATE TABLE IF NOT EXISTS patient (
    patient_id     INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    household_id   INT UNSIGNED    NOT NULL,
    first_name     VARCHAR(80)     NOT NULL,
    middle_name    VARCHAR(80)         NULL DEFAULT NULL,
    last_name      VARCHAR(80)     NOT NULL,
    dob            DATE            NOT NULL COMMENT 'Date of birth',
    sex            ENUM('Male','Female','Prefer not to say') NOT NULL,
    school_status  ENUM('Enrolled','Out of School','Not Applicable') NOT NULL DEFAULT 'Not Applicable',
    philhealth_no  VARCHAR(20)         NULL DEFAULT NULL COMMENT 'PhilHealth identification number',
    created_at     TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (patient_id),
    CONSTRAINT fk_patient_household
        FOREIGN KEY (household_id)
        REFERENCES household (household_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- TABLE: category
-- Clinical category / service line (e.g. Pediatrics, OB-GYN)
-- ============================================================
CREATE TABLE IF NOT EXISTS category (
    category_id    TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name           VARCHAR(60)      NOT NULL,
    description    VARCHAR(255)         NULL DEFAULT NULL,

    PRIMARY KEY (category_id),
    UNIQUE KEY uq_category_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Seed the initial clinical categories
INSERT INTO category (name, description) VALUES
    ('Pediatrics',          'Patients aged 0–18 years'),
    ('Internal Medicine',   'Adult general medicine'),
    ('OB-GYN',              'Obstetrics and Gynecology'),
    ('Dental',              'Oral health services'),
    ('General Surgery',     'Minor surgical procedures');

-- ============================================================
-- TABLE: physician
-- Attending doctors / health workers
-- ============================================================
CREATE TABLE IF NOT EXISTS physician (
    physician_id   SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name     VARCHAR(80)       NOT NULL,
    last_name      VARCHAR(80)       NOT NULL,
    specialty      VARCHAR(100)          NULL DEFAULT NULL,
    license_no     VARCHAR(30)           NULL DEFAULT NULL COMMENT 'PRC license number',
    is_active      TINYINT(1)        NOT NULL DEFAULT 1,

    PRIMARY KEY (physician_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- TABLE: consultation
-- Core clinical encounter record.
-- vitals columns added for nursing triage data entry.
-- ============================================================
CREATE TABLE IF NOT EXISTS consultation (
    consultation_id  INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    patient_id       INT UNSIGNED    NOT NULL,
    physician_id     SMALLINT UNSIGNED   NULL DEFAULT NULL COMMENT 'NULL if not yet seen by doctor',
    category_id      TINYINT UNSIGNED    NULL DEFAULT NULL,
    visit_date       DATE            NOT NULL,
    visit_time       TIME                NULL DEFAULT NULL,

    -- Nursing triage / vitals
    weight_kg        DECIMAL(5,2)        NULL DEFAULT NULL,
    height_cm        DECIMAL(5,1)        NULL DEFAULT NULL,
    bp_systolic      SMALLINT UNSIGNED   NULL DEFAULT NULL COMMENT 'mmHg',
    bp_diastolic     SMALLINT UNSIGNED   NULL DEFAULT NULL COMMENT 'mmHg',
    temperature_c    DECIMAL(4,1)        NULL DEFAULT NULL,
    pulse_rate       SMALLINT UNSIGNED   NULL DEFAULT NULL COMMENT 'bpm',
    respiratory_rate SMALLINT UNSIGNED   NULL DEFAULT NULL COMMENT 'breaths/min',
    oxygen_sat       TINYINT UNSIGNED    NULL DEFAULT NULL COMMENT 'SpO2 %',

    -- Doctor's clinical notes
    chief_complaint  TEXT            NOT NULL,
    symptoms         TEXT                NULL DEFAULT NULL,
    diagnosis        VARCHAR(500)        NULL DEFAULT NULL,
    icd10_code       VARCHAR(10)         NULL DEFAULT NULL COMMENT 'Optional ICD-10 classification',
    treatment        TEXT                NULL DEFAULT NULL,
    medications      TEXT                NULL DEFAULT NULL,
    remarks          TEXT                NULL DEFAULT NULL,

    -- Follow-up tracking
    follow_up_date   DATE                NULL DEFAULT NULL,
    is_referred      TINYINT(1)      NOT NULL DEFAULT 0 COMMENT '1 = referred to hospital',

    created_at       TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at       TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (consultation_id),
    CONSTRAINT fk_consult_patient
        FOREIGN KEY (patient_id)
        REFERENCES patient (patient_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_consult_physician
        FOREIGN KEY (physician_id)
        REFERENCES physician (physician_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,
    CONSTRAINT fk_consult_category
        FOREIGN KEY (category_id)
        REFERENCES category (category_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    -- Indexes for analytics queries
    INDEX idx_visit_date    (visit_date),
    INDEX idx_diagnosis     (diagnosis(191)),
    INDEX idx_patient_date  (patient_id, visit_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- VIEW: v_patient_full
-- Convenience view joining patient → household for listings
-- ============================================================
CREATE OR REPLACE VIEW v_patient_full AS
SELECT
    p.patient_id,
    CONCAT(p.last_name, ', ', p.first_name,
           IF(p.middle_name IS NOT NULL, CONCAT(' ', p.middle_name), '')) AS full_name,
    p.dob,
    TIMESTAMPDIFF(YEAR, p.dob, CURDATE())  AS age,
    p.sex,
    p.school_status,
    p.philhealth_no,
    h.household_id,
    CONCAT(h.street_address, ', ', h.barangay, ', ', h.municipality) AS full_address,
    h.is_ip,
    h.is_nhts
FROM patient p
JOIN household h ON p.household_id = h.household_id;

-- ============================================================
-- VIEW: v_consultation_full
-- Full consultation view for analytics and reports
-- ============================================================
CREATE OR REPLACE VIEW v_consultation_full AS
SELECT
    c.consultation_id,
    c.visit_date,
    c.visit_time,
    p.patient_id,
    CONCAT(p.last_name, ', ', p.first_name) AS patient_name,
    TIMESTAMPDIFF(YEAR, p.dob, c.visit_date) AS age_at_visit,
    p.sex,
    h.is_ip,
    h.is_nhts,
    h.barangay,
    cat.name        AS category_name,
    CONCAT(ph.last_name, ', ', ph.first_name) AS physician_name,
    c.chief_complaint,
    c.diagnosis,
    c.icd10_code,
    c.treatment,
    c.follow_up_date,
    c.is_referred
FROM consultation c
JOIN patient      p   ON c.patient_id    = p.patient_id
JOIN household    h   ON p.household_id  = h.household_id
LEFT JOIN category    cat ON c.category_id   = cat.category_id
LEFT JOIN physician   ph  ON c.physician_id  = ph.physician_id;
