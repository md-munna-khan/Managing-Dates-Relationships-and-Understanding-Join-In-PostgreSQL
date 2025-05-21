
CREATE Table departments(
    id SERIAL PRIMARY KEY,
department_name VARCHAR(50)
);

INSERT INTO departments(department_name) VALUES
('CSE'),
('EEE'),
('BBA'),
('MBA'),
('English'),
('Law'),
('Economics'),
('Sociology'),
('Psychology'),
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('Pharmacy'),
('History'),
('Islamic Studies'),
('Political Science'),
('Statistics'),
('Geography'),
('Journalism');

INSERT INTO departments(department_name) VALUES ('New Department');

DROP Table departments;

SELECT * from departments;

create Table students(
    id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT REFERENCES departments(id) on delete set NULL,
    last_login DATE
);

INSERT INTO students (student_name, department_id, last_login) VALUES
('Munna', 1, '2025-01-01'),
('Rakib', 2, '2025-01-05'),
('Sakib', 3, '2025-01-10'),
('Junaid', 4, '2025-01-15'),
('Raihan', 5, '2025-01-20'),
('Tariq', 6, '2025-01-25'),
('Shakil', 7, '2025-02-01'),
('Hasan', 8, '2025-02-05'),
('Kamal', 9, '2025-02-10'),
('Jamal', 10, '2025-02-15'),
('Rasel', 11, '2025-02-20'),
('Noman', 12, '2025-02-25'),
('Imran', 13, '2025-03-01'),
('Sohan', 14, '2025-03-05'),
('Riyad', 15, '2025-03-10'),
('Fahim', 16, '2025-05-15'),
('Omar', 17, '2025-03-20'),
('Nasim', 18, '2025-03-25'),
('Rubel', 19, '2025-03-30'),
('Biplob', 20, '2025-05-01');


INSERT INTO students (id,student_name, department_id, last_login) VALUES(21,'john', 21, '2025-05-08');

DROP Table students;

SELECT * from students;

create Table courses(
    id SERIAL PRIMARY KEY,
    course_title TEXT
);
INSERT INTO courses(course_title) VALUES
('Introduction to Computer Science'),
('Data Structures and Algorithms'),
('Database Management Systems'),
('Operating Systems'),
('Computer Networks'),
('Web Development'),
('Mobile App Development'),
('Software Engineering'),
('Machine Learning'),
('Artificial Intelligence'),
('Cloud Computing'),
('Cybersecurity Fundamentals'),
('Programming in Python'),
('Java Programming'),
('C Programming'),
('Human-Computer Interaction'),
('Digital Logic Design'),
('Compiler Design'),
('Big Data Analytics'),
('Blockchain Technology');


SELECT * from courses;
drop TABLE courses;
-- Date & Grouping Tasks (Based on 9-1, 9-2)
--Retrieve students who have logged in within the last 30 days.

SELECT * from students
WHERE last_login >= CURRENT_DATE - INTERVAL '30 days';

--Extract the login month from the last_login and group students by month.

SELECT extract(MONTH from last_login)as last_month, count(*) from students
GROUP BY last_month
ORDER BY last_month
;

-- Count how many students logged in per month and show only those months where login count is more than 3.
SELECT extract(MONTH from last_login)as last_month, count(*) from students
GROUP BY last_month
HAVING count(*)>3;
 --Foreign Key & Constraints (Based on 9-3, 9-4, 9-5)

 -- Create a foreign key constraint on department_id in the students table referencing departments(id)

 --Delete a department and see how students are affected using ON DELETE CASCADE and ON DELETE SET NULL.

 delete FROM departments
 where id = 6;

 SELECT * from departments;
 SELECT * from students;
 

 --- Join Operations (Based on 9-6 to 9-8)

 -- Join students and departments using INNER JOIN to display each student's department name.

 SELECT student_name,department_name from students
 join departments on students.department_id= departments.id;


 ---Use a LEFT JOIN to show all students including those without a department.
 SELECT * from students
 left join departments on students.department_id= departments.id;

 --- Use a RIGHT JOIN to show all departments including those without students.

  SELECT * from students
 RIGHT join departments on students.department_id= departments.id;

 ---Perform a FULL JOIN to get all records from both students and departments.

  SELECT * from students
 join departments on students.department_id= departments.id;

 --- Create a cross-product of all students and courses using CROSS JOIN

 SELECT * from students
 CROSS JOIN departments;

 -- Use NATURAL JOIN between tables that have a shared column like department_id.


SELECT * FROM students
NATURAL JOIN departments;