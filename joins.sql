-- Create Students Table
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50)
);

-- Insert Data into Students Table
INSERT INTO students VALUES
(1, 'Zaheer'),
(2, 'Salaar'),
(3, 'Katappa'),
(4, 'Marco');

-- Create Books Table
CREATE TABLE books (
book_id INT PRIMARY KEY,
book_name VARCHAR(50),
student_id INT
);

-- Insert Data into Books Table
INSERT INTO books VALUES
(1, 'Database', 1),
(2, 'English', 3),
(3, 'Islamiat', 3);

-- ==============================
--         INNER JOIN QUERY
-- ==============================

SELECT students.id,
students.name,
books.book_name
FROM students
INNER JOIN books
ON students.id = books.student_id;

-- =============================
--        LEFT JOIN QUERY
-- =============================

SELECT students.id,
students.name,
books.book_name
FROM students
LEFT JOIN books
ON students.id = books.student_id;

-- ==============================
--        RIGHT JOIN QUER
-- ==============================

SELECT students.id,
students.name,
books.book_name
FROM students
RIGHT JOIN books
ON students.id = books.student_id;

