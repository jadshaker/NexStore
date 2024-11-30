CREATE OR REPLACE FUNCTION Update_Department_Employees_Remove()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Department_Employees
    SET Total_Employees = Total_Employees - 1
    WHERE Department_name = OLD.Department_name;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Update_Department_Employees_Remove
AFTER DELETE ON Employee
FOR EACH ROW
EXECUTE FUNCTION Update_Department_Employees_Remove();