--------------------EXPERIMENT 03: (MEDIUM LEVEL)
CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(5, 'MAX', 90000, 1);


SELECT E.name, E.salary,d.dept_name
FROM employee AS E
INNER JOIN
department AS D
ON E.department_id = D.id
WHERE E.salary IN
(SELECT MAX(E2.salary)
FROM employee as E2
WHERE E2.department_id = E.department_id);









