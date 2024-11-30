CREATE VIEW
  Department_Employees AS
SELECT
  Department_name,
  COUNT(Employee.SSN) AS Total_Employees
FROM
  Department
  JOIN Employee ON Department.name = Employee.Department_name
GROUP BY
  Department_name;

SELECT * FROM Department_Employees;