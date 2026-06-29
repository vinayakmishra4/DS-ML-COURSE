-- ==========================================
-- DATABASE: GFG
-- ==========================================

CREATE DATABASE gfg;

USE gfg;

-- ==========================================
-- CREATE TABLE
-- ==========================================

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    gender VARCHAR(10),
    marks INT,
    age INT
);

-- ==========================================
-- INSERT DATA
-- ==========================================

INSERT INTO student VALUES
(101,'Amit','CSE','Male',95,20),
(102,'Priya','CSE','Female',88,21),
(103,'Rahul','ECE','Male',76,22),
(104,'Sneha','ECE','Female',91,20),
(105,'Vikas','ME','Male',67,23),
(106,'Neha','ME','Female',82,22),
(107,'Rohan','CSE','Male',95,21),
(108,'Anjali','ECE','Female',91,22),
(109,'Karan','ME','Male',82,20),
(110,'Pooja','CSE','Female',78,21);

-- ==========================================
-- WINDOW FUNCTION QUESTIONS
-- ==========================================

-- Q1. Display student rank based on highest marks.

SELECT student_name,
       marks,
       RANK() OVER(ORDER BY marks DESC) AS rank_no
FROM student;


-- Q2. Display dense rank based on highest marks.

SELECT student_name,
       marks,
       DENSE_RANK() OVER(ORDER BY marks DESC) AS dense_rank
FROM student;


-- Q3. Display row number based on marks.

SELECT student_name,
       marks,
       ROW_NUMBER() OVER(ORDER BY marks DESC) AS row_no
FROM student;


-- Q4. Display department-wise rank.

SELECT student_name,
       department,
       marks,
       RANK() OVER(PARTITION BY department ORDER BY marks DESC) AS dept_rank
FROM student;


-- Q5. Display top 2 students from each department.

SELECT *
FROM
(
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY department ORDER BY marks DESC) AS rn
    FROM student
) x
WHERE rn <= 2;


-- Q6. Display previous student's marks using LAG().

SELECT student_name,
       marks,
       LAG(marks) OVER(ORDER BY marks DESC) AS previous_marks
FROM student;


-- Q7. Display next student's marks using LEAD().

SELECT student_name,
       marks,
       LEAD(marks) OVER(ORDER BY marks DESC) AS next_marks
FROM student;


-- Q8. Display running total of marks.

SELECT student_name,
       marks,
       SUM(marks) OVER(ORDER BY student_id) AS running_total
FROM student;


-- Q9. Display department-wise average marks.

SELECT student_name,
       department,
       marks,
       AVG(marks) OVER(PARTITION BY department) AS department_average
FROM student;


-- Q10. Display highest marks in each department.

SELECT student_name,
       department,
       marks,
       MAX(marks) OVER(PARTITION BY department) AS highest_marks
FROM student;