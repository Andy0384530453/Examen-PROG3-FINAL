create type mobile_banking_service as enum (
                'ORANGE_MONEY',
                'MVOLA',
                'AIRTEL_MONEY');





      create table if not exists "mobile_banking_account"
      (
          id              varchar primary key,
          holder_name     varchar,
          service         mobile_banking_service,
          mobile_number   varchar,
          collectivity_id varchar references "collectivity" (id)
      );