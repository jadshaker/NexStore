CREATE OR REPLACE FUNCTION Get_Department_Employees(Department_name VARCHAR)
RETURNS INT AS $$
DECLARE
    Total_Employees INT;
BEGIN
    SELECT COUNT(SSN) INTO Total_Employees
    FROM Employee
    WHERE Employee.Department_name = Get_Department_Employees.Department_name;
    RETURN Total_Employees;
END;
$$ LANGUAGE plpgsql;

SELECT Get_Department_Employees('Sales');