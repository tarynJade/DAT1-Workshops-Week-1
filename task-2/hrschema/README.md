## Task 1: Retrieve the concatenated name and yearly salary of employees

To retrieve the concatenated name and yearly salary of employees, think about how to combine two columns (first and last name) into one and how to calculate the annual salary based on a monthly salary.

**Hint:** Use string concatenation and a mathematical operation to calculate yearly salary.

**Expected Output Example:**
| full_name     | yearly_salary |
|---------------|---------------|
| John Doe      | 72000         |

---

## Task 2: Enable foreign key constraints

Enabling foreign key constraints helps in maintaining the integrity of your data.

**Hint:** You'll need to modify a table and specify which constraint to enable.

---

## Task 3: Retrieve all rows from the employees table

To retrieve all rows from the employees table, consider the simplest form of a query that selects all columns.

**Hint:** Use `SELECT` and focus on selecting everything from the table.

**Expected Output Example:**
| employee_id | first_name | last_name | salary | ... |
|-------------|------------|-----------|--------|-----|

---

## Task 4: Retrieve employee_id, last_name, and salary from employees table and order by last_name

To retrieve specific columns and order the results, focus on how to filter the columns and sort the results.

**Hint:** Think about selecting specific columns and ordering by the last name.

**Expected Output Example:**
| employee_id | last_name | salary |
|-------------|-----------|--------|
| 101         | Brown     | 5000   |

---

## Task 5: Retrieve last_name, salary, and salary + 300 from employees table

For this task, you need to retrieve specific columns and add a fixed value to one of them.

**Hint:** Use arithmetic within the `SELECT` statement to add 300 to the salary.

**Expected Output Example:**
| last_name | salary | salary_plus_300 |
|-----------|--------|-----------------|
| Smith     | 4500   | 4800            |

---

## Task 6: Retrieve last_name, salary, and 12*salary+100 as New_Salary from employees table

Here, you'll calculate a new value based on the salary and rename it.

**Hint:** Perform arithmetic operations and alias the result as `New_Salary`.

**Expected Output Example:**
| last_name | salary | New_Salary |
|-----------|--------|------------|
| Johnson   | 4000   | 48100      |

SELECT last_name, salary, 12*salary+100 AS new_salary FROM employees;
---

## Task 7: Retrieve department_id from employees table and order by department_id in ascending order

To retrieve and order the results by a specific column, think about how to sort the output.

**Hint:** Use the `ORDER BY` clause with ascending order.

**Expected Output Example:**
| department_id |
|---------------|
| 10            |
| 20            |

SELECT department_id FROM employees ORDER BY department_id ASC;
---

## Task 8: Retrieve last_name, salary, and commission_pct from employees table

Select and display specific columns, focusing on retrieving both numeric and percentage values.

**Hint:** Consider selecting columns directly without modifications.

**Expected Output Example:**
| last_name | salary | commission_pct |
|-----------|--------|----------------|
| Lee       | 5000   | 0.1            |

SELECT last_name, salary, commission_pct FROM employees WHERE commission_pct IS NOT NULL;
---

## Task 9: Retrieve last_name and 12*salary*commission_pct from employees table

For this task, you'll perform a calculation involving multiple columns.

**Hint:** Multiply the salary by the commission percentage and by 12, then return the result.

**Expected Output Example:**
| last_name | calculated_value |
|-----------|------------------|
| Adams     | 7200             |

---

## Task 10: Retrieve last_name as Name and commission_pct as comm from employees table

Retrieve specific columns and rename them in the output.

**Hint:** Use column aliases to rename the output.

**Expected Output Example:**
| Name  | comm |
|-------|------|
| Taylor| 0.05 |

---

## Task 11: Retrieve department_id from employees table

Simply retrieve a single column from the table.

**Hint:** Focus on selecting one specific column.

**Expected Output Example:**
| department_id |
|---------------|
| 10            |

---

## Task 12: Retrieve last_name and salary from employees table where salary is less than or equal to 3000

Filter the results to show only those rows that meet a certain condition.

**Hint:** Use the `WHERE` clause to filter the salary.

**Expected Output Example:**
| last_name | salary |
|-----------|--------|
| Parker    | 3000   |

---

SELECT last_name, salary FROM employees
   ...> WHERE salary <= 3000;

## Task 13: Retrieve first_name from employees table where first_name starts with 'S'

Retrieve names that match a specific pattern.

**Hint:** Use the `LIKE` operator with a pattern that matches names starting with 'S'.

**Expected Output Example:**
| first_name |
|------------|
| Sarah      |

---

SELECT first_name FROM employees WHERE first_name LIKE 'S%';

## Task 14: Retrieve last_name from employees table where last_name starts with any character followed by 'o'

Find last names with a specific pattern.

**Hint:** Use the `LIKE` operator with a pattern that allows any character before 'o'.

**Expected Output Example:**
| last_name |
|-----------|
| Moore     |

SELECT first_name FROM employees WHERE first_name LIKE '_o%';
---

## Task 15: Retrieve last_name and commission_pct from employees table where commission_pct is NULL

Filter the results to show rows where a specific value is missing.

**Hint:** Use the `WHERE` clause to check for `NULL` values.

**Expected Output Example:**
| last_name | commission_pct |
|-----------|----------------|
| Baker     | NULL           |

---
SELECT last_name, commission_pct FROM employees WHERE commission_pct IS NULL;

## Task 16: Retrieve employee_id, last_name, salary, and department_id from employees table where salary is greater than or equal to 8000 and department_id is either 30 or 50

Use conditions to filter rows based on multiple criteria.

**Hint:** Combine multiple conditions using logical operators.

**Expected Output Example:**
| employee_id | last_name | salary | department_id |
|-------------|-----------|--------|---------------|
| 104         | Hill      | 8500   | 30            |

---

SELECT employee_id, last_name, salary, department_id FROM employees WHERE salary <= 8000 AND department_id = 30 OR department_id = 50;

## Task 17: Retrieve first_name, last_name, department_id, and hire_date from employees table and order by hire_date

Retrieve specific columns and order them by a date field.

**Hint:** Use the `ORDER BY` clause with a date column.

**Expected Output Example:**
| first_name | last_name | department_id | hire_date |
|------------|-----------|---------------|-----------|
| Emily      | Davis     | 20            | 2022-01-10|

SELECT first_name, last_name, department_id, hire_date 
FROM employees
ORDER BY hire_date ASC;
---

## Task 18: Retrieve first_name, last_name, department_id, and hire_date from employees table and order by department_id and last_name

Order the results by multiple columns.

**Hint:** Use multiple columns in the `ORDER BY` clause.

**Expected Output Example:**
| first_name | last_name | department_id | hire_date |
|------------|-----------|---------------|-----------|
| John       | Doe       | 10            | 2021-05-15|

SELECT first_name, last_name, department_id, hire_date FROM employees
ORDER BY department_id, last_name;