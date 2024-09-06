# SQL Workshop: Library Database Management

In this workshop, you will be working with a library database that contains tables related to students, books, book copies, and book loans. Below, you'll find a series of tasks designed to help you practice SQL skills such as counting, joining tables, and performing aggregate functions.

## Database Schema Overview

Your database consists of the following tables:
- **Student:** Information about students who borrow books.
- **Book:** Details about the books available in the library.
- **Book_Copy:** Copies of the books that are available for loan.
- **Loan_Book:** Records of books loaned out to students.

### Sample Data

#### students:
| student_id | fullname | email          | username |
|------------|----------|----------------|----------|
| 1          | Greg     | greg@gmail.com | greg123  |
| 2          | Chi      | chi@gmail.com  | chi123   |
| 3          | Melissa  | melissa@gmail.com | mel123 |

#### Books:
| isbn | title                  | author            | publisher     | deweyclass | isFiction | price |
|------|------------------------|-------------------|---------------|------------|-----------|-------|
| 123  | HARRY POTTER            | JK                | Penguin       | 001.231    | 1         | 2.3   |
| 155  | Percy Jackson           | Rick Riordan      | Umaimah       | 021.232    | 1         | 1.1   |
| 156  | The Call of the Wolves  | Jim Murphy        | Scholastic    | 001.233    | 0         | 5.6   |
| 157  | The King of the Golden River | John Ruskin | Smith, Elder & Co | 001.132| 0    | 4.4   |
| 158  | Naruto                  | Masashi Kishimoto | SJ            | 001.532    | 1         | 2.0   |

#### Book Copies:
| book_id | isbn |
|---------|------|
| 1       | 123  |
| 2       | 155  |
| 3       | 123  |
| 4       | 156  |
| 5       | 157  |
| 6       | 157  |
| 7       | 157  |
| 8       | 158  |
| 9       | 158  |

#### Loans:
| loan_id | student_id | book_id | START_TIME          | END_TIME            | loan_status |
|---------|------------|---------|---------------------|---------------------|-------------|
| 1       | 1          | 1       | 2021-04-02 09:00:00 | 2021-03-02 09:30:00 | 1           |
| 2       | 1          | 2       | 2021-04-02 09:00:00 | 2021-03-02 09:30:00 | 1           |
| 3       | 1          | 5       | 2021-04-02 09:00:00 | 2021-03-02 09:30:00 | 1           |

## Tasks

### Task 1: Generate Reports

1. **Report 1 - Count Book Copies**
   - **Hint:** Use an aggregate function to count the total number of book copies.
   - **Expected Output Example:**
     | Total_Book_Copies |
     |-------------------|
     | 9                 |

2. **Report 2 - Count Books**
   - **Hint:** Count the total number of unique books available in the library.
   - **Expected Output Example:**
     | Total_Books |
     |-------------|
     | 5           |

3. **Report 3 - Count Copies of Each Book**
   - **Hint:** Use grouping to count the number of copies available for each book.
   - **Expected Output Example:**
     | title                      | Copies |
     |----------------------------|--------|
     | HARRY POTTER               | 2      |
     | Percy Jackson              | 1      |
     | The Call of the Wolves     | 1      |
     | The King of the Golden River | 3    |
     | Naruto                     | 2      |

### Task 2: Add Data and Generate Reports

1. **Add More Students, Books, and Book Copies**
   - **Hint:** Insert new data into the relevant tables.
   - **Expected Action:** Insert additional rows into the Student, Book, and Book_Copy tables.
   - **Expected Output Example:** Verify your inserts with `SELECT` queries to ensure the data has been added correctly.

2. **Count All Students**
   - **Hint:** Count the total number of students in the database.
   - **Expected Output Example:**
     | Total_Students |
     |----------------|
     | 6              | (Assuming 3 new students were added)

3. **Count All Borrowed Books**
   - **Hint:** Count the total number of loans made from the Loan_Book table.
   - **Expected Output Example:**
     | Total_Borrowed_Books |
     |----------------------|
     | 3                    |

4. **Summative Table: Books Borrowed by Each Student**
   - **Hint:** Use a join between the Loan_Book and Student tables, grouping by student.
   - **Expected Output Example:**
     | fullname | Total_Books_Borrowed |
     |----------|----------------------|
     | Greg     | 3                    |
     | Chi      | 0                    |
     | Melissa  | 0                    |

5. **Summative Table: All Borrowed Books**
   - **Hint:** Display all borrowed books along with the student who borrowed them.
   - **Expected Output Example:**
     | fullname | title                       | borrow_date          |
     |----------|----------------------------|----------------------|
     | Greg     | HARRY POTTER                | 2021-04-02 09:00:00  |
     | Greg     | Percy Jackson               | 2021-04-02 09:00:00  |
     | Greg     | The King of the Golden River| 2021-04-02 09:00:00  |

### Task 3: Financial Analysis and Updates

1. **Calculate Total Library Book Cost**
   - **Hint:** Sum the prices of all the books in the library.
   - **Expected Output Example:**
     | Total_Library_Cost |
     |--------------------|
     | 15.4               | (Sum of all book prices)

2. **Add a Lost Book Field and Calculate Damages**
   - **Hint:** Modify the Loan_Book table to include a field for lost books. Calculate the total damages based on the price of lost books.
   - **Expected Output Example:**
     | Total_Damages |
     |---------------|
     | 4.4           | (Assuming one book with price 4.4 is marked as lost)
