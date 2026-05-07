create type gender as enum ('MALE', 'FEMALE');
create type member_occupation as enum ('JUNIOR', 'SENIOR', 'SECRETARY', 'TREASURER', 'VICE_PRESIDENT', 'PRESIDENT');


create table if not exists "member"(
    id   varchar primary key,
    first_name  varchar,
    last_name   varchar,
    birth_date  date,
    gender   gender,
    address  varchar,
    profession varchar,
    phone_number varchar,
    email   varchar,
    occupation member_occupation,
    registration_fee_paid boolean,
    membership_dues_paid  boolean
);