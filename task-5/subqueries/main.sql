.open testscores.db
.mode column

DROP TABLE IF EXISTS test_score;

-- Create the "test_score" table
CREATE TABLE test_score (
  student_id int primary key,
  score int
);

-- Insert data into the "test_score" table
INSERT INTO test_score (student_id, score)
VALUES (1, 50),
       (2, 28),
       (3, 81),
       (4, 93),
       (5, 72),
       (6, 49),
       (7, 62),
       (8, 54),
       (9, 66),
       (10, 42);

-- Show all data in the "test_score" table
SELECT * FROM test_score;