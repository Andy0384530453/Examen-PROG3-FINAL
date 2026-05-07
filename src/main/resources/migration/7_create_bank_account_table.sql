   create type bank_name as enum (
                'BRED',
                'MCB',
                'BMOI',
                'BOA',
                'BGFI',
                'AFG',
                'ACCES_BAQUE',
                'BAOBAB',
                'SIPEM');


        create table if not exists "bank_account"
            (
                id              varchar primary key,
                holder_name     varchar,
                bank_name       bank_name,
                bank_code       integer,
                branch_code     integer,
                account_number  integer,
                key             integer,
                collectivity_id varchar references "collectivity" (id)
            );