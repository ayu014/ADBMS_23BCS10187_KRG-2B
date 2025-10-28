CREATE TABLE students (  
id SERIAL PRIMARY KEY,  
name VARCHAR(50),  
age INT,  
class INT  
); -- First transaction: all valid data  
DO $$  
BEGIN  
INSERT INTO students(name, age, class) VALUES ('Anisha',16,8);  
INSERT INTO students(name, age, class) VALUES ('Neha',17,8);  
INSERT INTO students(name, age, class) VALUES ('Mayank',19,9);  
RAISE NOTICE 'Transaction Successfully Done';  

END;  
$$;  
SELECT * FROM students; -- Second scenario: partial rollback using savepoints  
BEGIN;  -- start transaction  
SAVEPOINT sp1;  
INSERT INTO students(name, age, class) VALUES ('Aarav',16,8);  
SAVEPOINT sp2; -- Try an invalid insert (will fail)  
INSERT INTO students(name, age, class) VALUES ('Rahul','wrong',9); -- Rollback only the 
failed one  
ROLLBACK TO SAVEPOINT sp2; -- Continue with valid data  
INSERT INTO students(name, age, class) VALUES ('Sita',17,10);  
DEPARTMENT OF  
COMPUTER SCIENCE & ENGINEERING  
COMMIT; -- Show final data  
SELECT * FROM students;commit all successful inserts