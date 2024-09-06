# Subqueries Workshop: Test Scores

In this workshop, you will practice using subqueries in SQL to analyze data. The tasks below will guide you through creating a table, inserting data, and performing queries that utilize subqueries to retrieve meaningful results.

## Database Schema Overview

Your database consists of the following tables:
- **Student:** Information about students who borrow books.

### Sample Data

#### test_score:
| student_id | score |
|------------|-------|
| 1          | 50    |
| 2          | 28    |
| 3          | 81    |
| 4          | 93    |
| ...        | ...   |

## Tasks

### Task 1: Calculate the Average Score

Use a subquery to calculate the average score of all students in the `test_score` table.

- **Hint:** Use the `AVG()` function to calculate the average score.

### Task 2: Retrieve Students with Above-Average Scores

Find all students who scored above the average.

- **Hint:** Use a subquery to compare each student's score with the average score.

- **Expected Output Example:**

| student_id | score |
|------------|-------|
| 3          | 81    |
| 4          | 93    |
| 5          | 72    |
| 7          | 62    |
| 9          | 66    |

### Task 3: Use a Common Table Expression (CTE)

Rewrite the query from Task 2 using a Common Table Expression (CTE) to store the average score before filtering the results.

- **Hint:** Use the `WITH` clause to create the CTE.

- **Expected Output Example:** Same as Task 2