.open library.db
.mode column

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Loan_Book;
DROP TABLE IF EXISTS Book_Copy;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS Student;

CREATE TABLE IF NOT EXISTS Student (
   student_id INTEGER PRIMARY KEY NOT NULL,
   fullname VARCHAR(50),
   address VARCHAR(320),
   email VARCHAR(320),
   yearofstudy TIMESTAMP DEFAULT (strftime('%s','now')),
   username VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Book (
   isbn  INTEGER PRIMARY KEY NOT NULL,
   title VARCHAR(320),
   author VARCHAR(50),
   publisher VARCHAR(50),
   deweyclass REAL NOT NULL,
   isFiction INTEGER,
   price REAL
);
 
CREATE TABLE IF NOT EXISTS Book_Copy (
   book_id INTEGER PRIMARY KEY AUTOINCREMENT,
   isbn  INTEGER NOT NULL,
   FOREIGN KEY(ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE IF NOT EXISTS Loan_Book (
  loan_id INTEGER PRIMARY KEY NOT NULL,
  book_id INTEGER NOT NULL,
  student_id INTEGER NOT NULL,
  START_TIME TIMESTAMP DEFAULT (strftime('%s','now')),
  END_TIME TIMESTAMP DEFAULT (strftime('%s','now','+14 days')),
  loan_status INTEGER DEFAULT 1,
  FOREIGN KEY(book_id) REFERENCES Book_Copy(book_id),
  FOREIGN KEY(student_id) REFERENCES Student(student_id)
);

INSERT INTO Student (fullname, email, username) VALUES
('Greg', 'greg@gmail.com','greg123'),
('Chi', 'chi@gmail.com','chi123'),
('Melissa', 'melissa@gmail.com','mel123')
;

-- Book Inserts - Admin can add books
INSERT INTO Book (isbn,title,author,publisher,deweyclass,isFiction, price) VALUES
(123,'HARRY POTTER','JK','Penguin',001.231,1, 2.3),
(155,'Percy Jackson','Rick Riordan','Umaimah',021.232,1, 1.1),
(156,'The Call of the Wolves','Jim Murphy','Scholastic',001.233,0, 5.6),
(157,'The King of the Golden River','John Ruskin',' Smith, Elder & Co',001.132,0, 4.4),
(158,'Naruto','Masashi Kishimoto','SJ',001.532,1, 2);
 
-- Book_Copy Inserts - Admins can add a book copy to Library
INSERT INTO Book_Copy(isbn) VALUES 
(123),
(155),
(123),
(156),
(157),
(157),
(157),
(158),
(158); 

-- Student loans out a book 
INSERT INTO Loan_Book(student_id,book_id,START_TIME,END_TIME,loan_status)
VALUES 
(1,1,strftime('%s','2021-04-02 09:00:00'),strftime('%s','2021-03-02 09:30:00'),1),
(1,2,strftime('%s','2021-04-02 09:00:00'),strftime('%s','2021-03-02 09:30:00'),1),
(1,5,strftime('%s','2021-04-02 09:00:00'),strftime('%s','2021-03-02 09:30:00'),1);

-- Show tables
SELECT * FROM Student;
SELECT * FROM Book;
SELECT * FROM Book_Copy;
SELECT * FROM Loan_Book;


