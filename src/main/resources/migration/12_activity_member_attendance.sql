CREATE TABLE IF NOT EXISTS activity_member_attendance
(
    activity_id       VARCHAR(255) NOT NULL REFERENCES activity(id),
    member_id         VARCHAR(255) NOT NULL REFERENCES member(id),
    attendance_status attendance_status NOT NULL DEFAULT 'UNDEFINED',

    PRIMARY KEY (activity_id, member_id)
);

-- Pour les occupations
CREATE TYPE member_occupation AS ENUM (
    'JUNIOR',
    'SENIOR',
    'SENIOR_MEMBER',
    'SECRETARY',
    'TREASURER',
    'VICE_PRESIDENT',
    'PRESIDENT'
);

-- Pour l'assiduité
CREATE TYPE attendance_status AS ENUM (
    'MISSING',
    'ATTENDED',
    'UNDEFINED'
);

-- Pour les types d'activités
CREATE TYPE activity_type AS ENUM (
    'MEETING',
    'TRAINING',
    'OTHER'
);

-- Pour les fréquences de paiement
CREATE TYPE frequency AS ENUM (
    'WEEKLY',
    'MONTHLY',
    'ANNUALLY',
    'PUNCTUALLY'
);

-- Pour les modes de paiement
CREATE TYPE payment_mode AS ENUM (
    'CASH',
    'MOBILE_BANKING',
    'BANK_TRANSFER'
);