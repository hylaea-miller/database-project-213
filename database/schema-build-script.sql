CREATE TABLE state (
    State_ID   VARCHAR PRIMARY KEY,
    State_Name VARCHAR,
    Region     VARCHAR
);

CREATE TABLE carbon_pool (
    Pool_ID     VARCHAR PRIMARY KEY,
    Pool_Name   VARCHAR,
    Description VARCHAR
);

CREATE TABLE stock (
    Stock_ID  INTEGER PRIMARY KEY,
    State_ID  VARCHAR REFERENCES state(State_ID),
    Pool_ID   VARCHAR REFERENCES carbon_pool(Pool_ID),
    Year      INTEGER,
    Value     REAL
);

CREATE TABLE flux (
    Flux_ID   INTEGER PRIMARY KEY,
    State_ID  VARCHAR REFERENCES state(State_ID),
    Pool_ID   VARCHAR REFERENCES carbon_pool(Pool_ID),
    Year      INTEGER,
    Unit      VARCHAR,
    Value     REAL
);


COPY state (State_ID, State_Name, Region)
FROM '../data/processed/state.csv'
DELIMITER ',' CSV HEADER;

COPY carbon_pool (Pool_ID, Pool_Name, Description)
FROM '../data/processed/carbon_pool.csv'
(HEADER TRUE, DELIMITER ',');

COPY stock (Stock_ID, State_ID, Pool_ID, Year, Value)
FROM '../data/processed/stock.csv'
(HEADER TRUE, DELIMITER ',', NULLSTR 'NA');

COPY flux (Flux_ID, State_ID, Pool_ID, Year, Unit, Value)
FROM '../data/processed/flux.csv'
(HEADER TRUE, DELIMITER ',', NULLSTR 'NA');