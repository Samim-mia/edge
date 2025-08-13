### Ans to the Q. No.-1 #####

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(255) UNIQUE,
  dob DATE,
  department_id INT,
  CONSTRAINT fk_students_department
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id)
);


## Ans to the Q. No.-2 ###

INSERT INTO Students (student_id, name, email, dob, department_id)
VALUES
  (101, 'John Doe', 'john@example.com', '2002-06-15', 2),
  (102, 'Jane Smith', 'jane@example.com', '2001-10-30', 1);


## Ans to the Q. No.-3 ####

SELECT student_id,
       name,
       email,
       dob,
       department_id
FROM Students
WHERE dob > '2002-12-31'
ORDER BY name DESC;

## Ans to the Q. No.-4 ####
SELECT department_id,
       COUNT(*) AS total_students
FROM Students
GROUP BY department_id
ORDER BY department_id;

## Ans to the Q. No.-5 ####
SELECT * FROM Students
WHERE dob < '2000-01-01';
