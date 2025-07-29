CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Ename VARCHAR(100),
    Department VARCHAR(100),
    ManagerID INT  
);


INSERT INTO Employee (EmpID, Ename, Department, ManagerID) VALUES
(1, 'Alice',   'HR',      NULL),
(2, 'Bob',     'Finance', 1),
(3, 'Charlie', 'IT',      1),
(4, 'David',   'Finance', 2),
(5, 'Eve',     'IT',      3),
(6, 'Frank',   'HR',      1);



SELECT 
    E.Ename AS EmployeeName,
    E.Department AS EmployeeDept,
    M.Ename AS ManagerName,
    M.Department AS ManagerDept
FROM 
    Employee E
LEFT JOIN 
    Employee M ON E.ManagerID = M.EmpID;
