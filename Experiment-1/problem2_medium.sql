CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);



CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);



INSERT INTO Department (DeptID, DeptName) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Biology');




INSERT INTO Course (CourseID, CourseName, DeptID) VALUES
(101, 'Data Structures', 1),
(102, 'Operating Systems', 1),
(103, 'DBMS', 1),
(104, 'Calculus', 2),
(105, 'Linear Algebra', 2),
(106, 'Quantum Mechanics', 3),
(107, 'Thermodynamics', 3),
(108, 'Organic Chemistry', 4),
(109, 'Cell Biology', 5),
(110, 'Genetics', 5);




SELECT 
    DeptName,
    (SELECT COUNT(*) 
    FROM Course 
    WHERE Course.DeptID = Department.DeptID) AS CourseCount
FROM Department;




CREATE LOGIN student_user WITH PASSWORD = 'StrongPassword123!';
CREATE USER student_user FOR LOGIN student_user;


GRANT SELECT ON Course TO student_user;
