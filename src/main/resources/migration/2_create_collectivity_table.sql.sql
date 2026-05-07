CREATE TABLE IF NOT EXISTS collectivity
(
    id                  VARCHAR PRIMARY KEY,
    name                VARCHAR,
    number              INTEGER,
    location            VARCHAR,
    specialization      VARCHAR,

    president_id        VARCHAR REFERENCES member(id),
    vice_president_id   VARCHAR REFERENCES member(id),
    treasurer_id        VARCHAR REFERENCES member(id),
    secretary_id        VARCHAR REFERENCES member(id)
);