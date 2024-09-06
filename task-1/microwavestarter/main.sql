.open microwaves.db
.mode column

DROP TABLE IF EXISTS microwaves;

-- 1. Creating the schema: 1 table (microwaves) with defined attributes. This is written in DDL.
CREATE TABLE IF NOT EXISTS microwaves(
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  maker VARCHAR(20) NOT NULL,
  model VARCHAR(20) NOT NULL,
  power INTEGER NOT NULL
);

-- Adding more microwaves - DML
INSERT INTO microwaves(maker, model, power)
  VALUES ('Sharp', 'R6545L', 800);
INSERT INTO microwaves(maker, model, power)
  VALUES ('Sharp', 'R33STM', 900);
INSERT INTO microwaves(maker, model, power)
  VALUES ('Sanyo', 'EMS3553', 900);
INSERT INTO microwaves(maker, model, power)
  VALUES ('Daewoo', 'KDR3000', 800);

--Show all data in the "micowaves" table
select * from microwaves;
select * from microwaves;
select * from microwaves;
