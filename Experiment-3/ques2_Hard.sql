CREATE TABLE tbl_A(
empiD INT PRIMARY KEY,
empName VARCHAR(50),
empSalary INT
)

CREATE TABLE tbl_B(
empiD INT PRIMARY KEY,
empName VARCHAR(50),
empSalary INT
)


INSERT INTO tbl_A (empiD, empName, empSalary) VALUES
(1, 'JOE', 70000),
(2, 'JIM', 90000),
(3, 'HENRY', 80000);


INSERT INTO tbl_B(empiD, empName, empSalary) VALUES
(1, 'MAX', 50000),
(2, 'JIM', 95000),
(3, 'SAM', 60000);


SELECT empID, MIN(empName), MIN(empSalary)
FROM 
(SELECT * FROM tbl_A
UNION ALL
SELECT * FROM tbl_B


