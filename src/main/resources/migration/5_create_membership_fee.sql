  create type frequency as enum (
                'WEEKLY',
                'MONTHLY',
                'ANNUALLY',
                'PUNCTUALLY');


     create type activity_status as enum (
                    'ACTIVE',
                    'INACTIVE');




  create table if not exists "membership_fee"
  (
      id              varchar primary key,
      label           varchar,
      amount          numeric(12, 2),
      eligible_from   date,
      status          activity_status,
      frequency       frequency,
      collectivity_id varchar references "collectivity" (id)
  );