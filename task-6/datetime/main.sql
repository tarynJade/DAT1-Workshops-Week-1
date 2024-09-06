.open emrecords.db
.mode column

-- Current Date
SELECT date();


-- Current Time
SELECT time();


CREATE TABLE Employee
(
  eid INTEGER PRIMARY KEY AUTOINCREMENT,
  ename TEXT,
  joining_date TEXT,
  salary REAL
);

INSERT INTO Employee(ename, joining_date, salary)
VALUES 
('Rati', date('now','start of month'), 5200),
('Umang', date('now','start of year'), 5700),
('Prachi', date('now','start of year','-7 months'), 5500),
('Ashmite', date('now','start of year','-32 days'), 7000);

Select * FROM Employee