INSERT INTO
  Employee (SSN, Position, Salary, Hire_date, Gender, Date_of_birth, Email, First_name, Last_name, Phone_number, Country, State, City, Street, Building, Apartment, Branch_phone_number, Supervisor_SSN, Department_name)
VALUES
  -- Sales Department Employees
  (123456789, 'Manager', 100000, '2019-01-15', 'Male', '1980-05-20', 'john.doe@example.com', 'John', 'Doe', '+96100000001', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 12, '+96111111111', NULL, 'Sales'),
  (111111111, 'AdminAssistant', 50000, '2020-02-20', 'Female', '1990-08-15', 'jane.smith@example.com', 'Jane', 'Smith', '+96100000002', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 13, '+96111111111', 123456789, 'Sales'),
  (111111112, 'Trainer', 60000, '2021-05-10', 'Male', '1985-11-30', 'peter.brown@example.com', 'Peter', 'Brown', '+96100000003', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 14, '+96111111111', 123456789, 'Sales'),
  (111111113, 'ITSpecialist', 70000, '2021-07-01', 'Male', '1992-03-12', 'alex.jones@example.com', 'Alex', 'Jones', '+96100000004', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 15, '+96111111111', 123456789, 'Sales'),
  (111111114, 'ProcurementOfficer', 55000, '2022-09-15', 'Female', '1995-06-20', 'lisa.green@example.com', 'Lisa', 'Green', '+96100000005', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 16, '+96111111111', 123456789, 'Sales'),
  (654321987, 'AdminAssistant', 52000, '2021-09-10', 'Male', '1991-06-14', 'steven.king@example.com', 'Steven', 'King', '+96100000028', 'Lebanon', 'Mount Lebanon', 'Aley', 'Souk Street', 6, 5, '+96165432198', 123456789, 'Sales'),
  -- Marketing Department Employees
  (987654321, 'MarketingHead', 90000, '2018-06-10', 'Female', '1982-09-25', 'sarah.johnson@example.com', 'Sarah', 'Johnson', '+96100000006', 'Lebanon', 'North', 'Tripoli', 'Mina Street', 5, 12, '+96122222222', NULL, 'Marketing'),
  (222222222, 'AdminAssistant', 50000, '2021-08-01', 'Male', '1990-12-12', 'michael.taylor@example.com', 'Michael', 'Taylor', '+96100000007', 'Lebanon', 'North', 'Tripoli', 'Mina Street', 5, 13, '+96122222222', 987654321, 'Marketing'),
  -- HR Department Employees
  (123459876, 'HRManager', 85000, '2023-01-10', 'Male', '1984-03-15', 'david.wilson@example.com', 'David', 'Wilson', '+96100000008', 'Lebanon', 'Beqaa', 'Zahle', 'Beka St', 6, 4, '+96144444444', NULL, 'HR'),
  (333333333, 'AdminAssistant', 48000, '2023-02-15', 'Female', '1991-07-22', 'emily.davis@example.com', 'Emily', 'Davis', '+96100000009', 'Lebanon', 'Beqaa', 'Zahle', 'Beka St', 6, 5, '+96144444444', 123459876, 'HR'),
  -- Finance Department Employees
  (567894321, 'FinanceManager', 95000, '2019-10-05', 'Female', '1978-11-08', 'laura.martin@example.com', 'Laura', 'Martin', '+96100000010', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 3, '+96155555555', NULL, 'Finance'),
  (444444444, 'AdminAssistant', 47000, '2020-03-12', 'Male', '1989-04-18', 'daniel.moore@example.com', 'Daniel', 'Moore', '+96100000011', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 4, '+96155555555', 567894321, 'Finance'),
  (555555555, 'ComplianceOfficer', 62000, '2021-07-23', 'Female', '1993-09-30', 'olivia.thomas@example.com', 'Olivia', 'Thomas', '+96100000012', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 5, '+96155555555', 567894321, 'Finance'),
  -- Operations Department Employees
  (543216789, 'OperationsHead', 90000, '2018-08-15', 'Male', '1980-07-22', 'mark.stevens@example.com', 'Mark', 'Stevens', '+96100000013', 'Lebanon', 'South', 'Sidon', 'Corniche', 3, 6, '+96133333333', NULL, 'Operations'),
  (666666666, 'AdminAssistant', 50000, '2019-05-20', 'Female', '1992-01-15', 'anna.miller@example.com', 'Anna', 'Miller', '+96100000014', 'Lebanon', 'South', 'Sidon', 'Corniche', 3, 7, '+96133333333', 543216789, 'Operations'),
  -- IT Department Employee
  (678912345, 'ITSpecialist', 85000, '2020-03-10', 'Male', '1983-12-05', 'kevin.lee@example.com', 'Kevin', 'Lee', '+96100000015', 'Lebanon', 'Mount Lebanon', 'Byblos', 'Roman Street', 6, 7, '+96166666666', NULL, 'IT'),
  -- Customer Support Department Employees
  (876543219, 'SupportManager', 80000, '2017-11-01', 'Female', '1985-04-18', 'laura.kim@example.com', 'Laura', 'Kim', '+96100000016', 'Lebanon', 'South', 'Tyre', 'Port Road', 2, 1, '+96177777777', NULL, 'Customer Support'),
  (777777777, 'AdminAssistant', 48000, '2019-06-15', 'Male', '1990-08-30', 'john.park@example.com', 'John', 'Park', '+96100000017', 'Lebanon', 'South', 'Tyre', 'Port Road', 2, 2, '+96177777777', 876543219, 'Customer Support'),
  -- Logistics Department Employees
  (345678912, 'LogisticsHead', 90000, '2015-04-01', 'Male', '1979-02-25', 'peter.johnson@example.com', 'Peter', 'Johnson', '+96100000018', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 2, '+96188888888', NULL, 'Logistics'),
  (888888881, 'AdminAssistant', 47000, '2018-05-10', 'Female', '1991-09-15', 'susan.martin@example.com', 'Susan', 'Martin', '+96100000019', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 3, '+96188888888', 345678912, 'Logistics'),
  (888888882, 'ProcurementOfficer', 55000, '2019-07-22', 'Male', '1988-12-08', 'brian.davis@example.com', 'Brian', 'Davis', '+96100000020', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 4, '+96188888888', 345678912, 'Logistics'),
  -- Legal Department Employee
  (456789123, 'LegalAdvisor', 95000, '2016-09-05', 'Male', '1977-11-11', 'richard.harris@example.com', 'Richard', 'Harris', '+96100000021', 'Lebanon', 'North', 'Batroun', 'Old City', 1, 1, '+96199999999', NULL, 'Legal'),
  -- Training Department Employees
  (789123456, 'Trainer', 80000, '2020-01-05', 'Female', '1984-05-25', 'emily.clark@example.com', 'Emily', 'Clark', '+96100000022', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 10, '+96124681357', NULL, 'Training'),
  (999999991, 'Trainer', 60000, '2021-04-12', 'Male', '1992-03-18', 'michael.brown@example.com', 'Michael', 'Brown', '+96100000023', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 11, '+96124681357', 789123456, 'Training'),
  (999999992, 'Trainer', 61000, '2021-07-30', 'Female', '1989-09-07', 'jessica.wilson@example.com', 'Jessica', 'Wilson', '+96100000024', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 12, '+96124681357', 789123456, 'Training'),
  (999999993, 'AdminAssistant', 50000, '2022-02-18', 'Male', '1994-12-22', 'robert.moore@example.com', 'Robert', 'Moore', '+96100000025', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 13, '+96124681357', 789123456, 'Training'),
  -- Facilities Department Employee
  (987123456, 'FacilitiesManager', 85000, '2016-03-15', 'Male', '1975-08-05', 'george.anderson@example.com', 'George', 'Anderson', '+96100000026', 'Lebanon', 'Mount Lebanon', 'Choueifat', 'Railway Rd', 7, 3, '+96111223344', NULL, 'Facilities'),
  -- R&D Department Employee
  (234567891, 'R&DManager', 95000, '2020-05-10', 'Female', '1983-02-20', 'rachel.adams@example.com', 'Rachel', 'Adams', '+96100000027', 'Lebanon', 'Beirut', 'Beirut', 'Downtown', 9, 11, '+96112345678', NULL, 'R&D');