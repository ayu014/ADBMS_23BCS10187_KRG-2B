CREATE OR REPLACE FUNCTION fn_student_audit()  
RETURNS TRIGGER  
LANGUAGE plpgsql  
AS  
$$  
BEGIN  
IF TG_OP = 'INSERT' THEN  
RAISE NOTICE 'Inserted Row -> ID: %, Name: %, Age: %, Class: %',  
NEW.id, NEW.name, NEW.age, NEW.class;  
RETURN NEW;  
ELSIF TG_OP = 'DELETE' THEN  
RAISE NOTICE 'Deleted Row -> ID: %, Name: %, Age: %, Class: %',  
OLD.id, OLD.name, OLD.age, OLD.class;  
RETURN OLD; 
END IF; 
RETURN NULL;  
END;  
$$;  
CREATE TRIGGER trg_student_audit  
AFTER INSERT OR DELETE  
ON student  
FOR EACH ROW  
EXECUTE FUNCTION fn_student_audit();  
INSERT INTO student(name, age, class) VALUES ('Riya', 18, 10);  
DELETE FROM student WHERE name = 'Riya';  