CREATE TABLE IF NOT EXISTS cash_account
(
    id               VARCHAR PRIMARY KEY,
    collectivity_id  VARCHAR REFERENCES collectivity(id)
);