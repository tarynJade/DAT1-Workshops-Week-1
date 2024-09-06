# SQL Date and Time Functions Workshop

# SQL Date and Time Functions

In this workshop, you'll learn how to use SQL date and time functions to retrieve and manipulate date and time data. This is essential for tasks like calculating deadlines, formatting dates, and managing time-sensitive data.

## Tasks and Examples

### Task 1: Retrieving the Current Date and Time

The first step is to understand how to retrieve the current date and time using SQL functions.

- **Current Date:**

  - `SELECT date();`

- **Current Time:**

  - `SELECT time();`

- **Current Date & Time:**
  - `SELECT datetime('now') as 'Current date & time';`

### Task 2: Formatting and Manipulating Dates

SQL allows you to format and manipulate dates to extract specific information or calculate future/past dates.

- **Extracting Date from a Specific Timestamp:**

  - `SELECT date('2022-08-30 12:54:12') as 'Date()';`

- **Month End Calculation:**

  - Calculate the last day of the current month:
    - `SELECT date('now','start of month','+1 month','-1 day') AS "Month End";`

- **Year End Calculation:**

  - Calculate the last day of the current year:
    - `SELECT date('now','start of year','+12 month','-1 day') as 'Year End';`

- **Last Day of the Month Next Year:**

  - Calculate the last day of the month one year from now:
    - `SELECT date('now','start of month','+13 month','-1 day') as 'Last Date of the Month next year';`

- **Future Date Calculation:**
  - Calculate the date three months from now:
    - `SELECT date('now','+3 month');`

### Task 3: Time Manipulation

Time functions can be used to retrieve and manipulate time values, allowing you to calculate durations, deadlines, and more.

- **Extracting Time from a Specific Timestamp:**

  - `SELECT time('2016-09-02 12:56:07.01256') as Time;`

- **Adding Minutes to the Current Time:**

  - `SELECT time(), time('now','+40 minutes');`

- **Adding Seconds to the Current Time:**

  - `SELECT time(), time('now','+25 seconds');`

### Task 4: Date and Time Functions in a Table Context

Now, let’s move on to using date and time functions with data from a table. We'll work with an `Employee` table containing details about employees, their joining dates, and salaries.

#### Sample Table Structure

```sql
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
```

## Task 4.1: Viewing Employee Data

To view all employees, you can use the following SQL query:

```
SELECT * FROM Employee;
```

## Task 4.2: Calculating Appraisal Dates

To calculate the appraisal date (6 months after joining) for each employee, you can use the following SQL query:

```
SELECT eid, ename, joining_date, salary, date(joining_date,'6 months') as 'Appraisal date' FROM Employee;
```

## Task 4.3: Working with Julian Days

To calculate the difference in days between two dates, you can use the following SQL query:

```
SELECT julianday('now') - julianday('1992-11-14') as datedif;
```

To calculate the number of workdays for each employee, you can use the following SQL query:

```
SELECT eid, ename, joining_date, salary, julianday('now') - julianday(joining_date) as Workdays FROM Employee;
```

## Task 4.4: Extracting Specific Date and Time Components

To extract and format date components, you can use the following SQL queries:

```
SELECT strftime('%Y/%m/%d','now') as ptime;
SELECT strftime('%H:%M','now') as ptime;
SELECT strftime('%Y','now')- strftime('%Y','1992-12-28') as Age;
```

To break down the joining date into year, month, and day, you can use the following SQL query:

```
SELECT eid, ename, joining_date, strftime('%Y', joining_date) as "Year", strftime('%m', joining_date) as "Month", strftime('%d', joining_date) as "Day" FROM Employee WHERE strftime('%m', joining_date) IN('01','02','03');
```

By completing these tasks using the suggested SQL queries, you will be able to view employee data, calculate appraisal dates, work with Julian days, and extract specific date and time components.

## Conclusion

By applying these date and time functions, you can perform various operations on dates and times in SQL. These skills are crucial for handling real-world data scenarios, such as calculating deadlines, formatting dates, and managing time-sensitive data.
