CREATE OR REPLACE FUNCTION Update_Department_Employees()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Department_Employees
    SET Total_Employees = Total_Employees + 1
    WHERE Department_name = NEW.Department_name;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Update_Department_Employees
AFTER INSERT ON Employee
FOR EACH ROW
EXECUTE FUNCTION Update_Department_Employees();