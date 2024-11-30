BEGIN;

-- Step 1: Insert departments with Employee_SSN as NULL
INSERT INTO
  Department (Name, Number_of_employees, Employee_SSN, Manager_start_date)
VALUES
  ('Sales', 6, NULL, '2022-03-01'),
  ('Marketing', 2, NULL, '2021-06-15'),
  ('HR', 2, NULL, '2023-01-10'),
  ('Finance', 3, NULL, '2019-10-05'),
  ('Operations', 2, NULL, '2020-08-25'),
  ('IT', 1, NULL, '2024-04-18'),
  ('Customer Support', 2, NULL, '2022-09-12'),
  ('Logistics', 3, NULL, '2020-11-20'),
  ('Legal', 1, NULL, '2021-02-14'),
  ('Training', 4, NULL, '2023-03-27'),
  ('Facilities', 1, NULL, '2019-06-01'),
  ('R&D', 1, NULL, '2022-05-10');

-- Step 2: Insert branches with Employee_SSN as NULL
INSERT INTO
  Branch (Phone_number, Name, Country, State, City, Street, Building, Apartment, Employee_SSN)
VALUES
  ('+96111111111', 'Beirut Main', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 12, NULL),
  ('+96122222222', 'Tripoli Branch', 'Lebanon', 'North', 'Tripoli', 'Mina Street', 5, 12, NULL),
  ('+96133333333', 'Sidon Hub', 'Lebanon', 'South', 'Sidon', 'Corniche', 3, 6, NULL),
  ('+96144444444', 'Zahle Branch', 'Lebanon', 'Beqaa', 'Zahle', 'Beka St', 6, 4, NULL),
  ('+96155555555', 'Jounieh Store', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 3, NULL),
  ('+96166666666', 'Byblos Outlet', 'Lebanon', 'Mount Lebanon', 'Byblos', 'Roman Street', 6, 7, NULL),
  ('+96177777777', 'Tyre Shop', 'Lebanon', 'South', 'Tyre', 'Port Road', 2, 1, NULL),
  ('+96188888888', 'Baalbek Point', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 2, NULL),
  ('+96199999999', 'Batroun Corner', 'Lebanon', 'North', 'Batroun', 'Old City', 1, 1, NULL),
  ('+96112345678', 'Downtown Center', 'Lebanon', 'Beirut', 'Beirut', 'Downtown', 9, 11, NULL),
  ('+96124681357', 'Dora Warehouse', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 10, NULL),
  ('+96165432198', 'Aley Branch', 'Lebanon', 'Mount Lebanon', 'Aley', 'Souk Street', 6, 5, NULL),
  ('+96111223344', 'Choueifat Station', 'Lebanon', 'Mount Lebanon', 'Choueifat', 'Railway Rd', 7, 3, NULL);

-- Step 3: Insert employees referencing Department_name
INSERT INTO
  Employee (SSN, Position, Salary, Hire_date, Gender, Date_of_birth, Email, First_name, Last_name, Phone_number, Country, State, City, Street, Building, Apartment, Branch_phone_number, Supervisor_SSN, Department_name)
VALUES
  -- Sales Department Employees
  ('123456789', 'Manager', 100000, '2019-01-15', 'Male', '1980-05-20', 'john.doe@example.com', 'John', 'Doe', '+96100000001', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 12, '+96111111111', NULL, 'Sales'),
  ('111111111', 'AdminAssistant', 50000, '2020-02-20', 'Female', '1990-08-15', 'jane.smith@example.com', 'Jane', 'Smith', '+96100000002', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 13, '+96111111111', 123456789, 'Sales'),
  ('111111112', 'Trainer', 60000, '2021-05-10', 'Male', '1985-11-30', 'peter.brown@example.com', 'Peter', 'Brown', '+96100000003', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 14, '+96111111111', 123456789, 'Sales'),
  ('111111113', 'ITSpecialist', 70000, '2021-07-01', 'Male', '1992-03-12', 'alex.jones@example.com', 'Alex', 'Jones', '+96100000004', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 15, '+96111111111', 123456789, 'Sales'),
  ('111111114', 'ProcurementOfficer', 55000, '2022-09-15', 'Female', '1995-06-20', 'lisa.green@example.com', 'Lisa', 'Green', '+96100000005', 'Lebanon', 'Beirut', 'Beirut', 'Hamra', 10, 16, '+96111111111', 123456789, 'Sales'),
  ('654321987', 'AdminAssistant', 52000, '2021-09-10', 'Male', '1991-06-14', 'steven.king@example.com', 'Steven', 'King', '+96100000028', 'Lebanon', 'Mount Lebanon', 'Aley', 'Souk Street', 6, 5, '+96165432198', 123456789, 'Sales'),
  -- Marketing Department Employees
  ('987654321', 'MarketingHead', 90000, '2018-06-10', 'Female', '1982-09-25', 'sarah.johnson@example.com', 'Sarah', 'Johnson', '+96100000006', 'Lebanon', 'North', 'Tripoli', 'Mina Street', 5, 12, '+96122222222', NULL, 'Marketing'),
  ('222222222', 'AdminAssistant', 50000, '2021-08-01', 'Male', '1990-12-12', 'michael.taylor@example.com', 'Michael', 'Taylor', '+96100000007', 'Lebanon', 'North', 'Tripoli', 'Mina Street', 5, 13, '+96122222222', 987654321, 'Marketing'),
  -- HR Department Employees
  ('123459876', 'HRManager', 85000, '2023-01-10', 'Male', '1984-03-15', 'david.wilson@example.com', 'David', 'Wilson', '+96100000008', 'Lebanon', 'Beqaa', 'Zahle', 'Beka St', 6, 4, '+96144444444', NULL, 'HR'),
  ('333333333', 'AdminAssistant', 48000, '2023-02-15', 'Female', '1991-07-22', 'emily.davis@example.com', 'Emily', 'Davis', '+96100000009', 'Lebanon', 'Beqaa', 'Zahle', 'Beka St', 6, 5, '+96144444444', 123459876, 'HR'),
  -- Finance Department Employees
  ('567894321', 'FinanceManager', 95000, '2019-10-05', 'Female', '1978-11-08', 'laura.martin@example.com', 'Laura', 'Martin', '+96100000010', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 3, '+96155555555', NULL, 'Finance'),
  ('444444444', 'AdminAssistant', 47000, '2020-03-12', 'Male', '1989-04-18', 'daniel.moore@example.com', 'Daniel', 'Moore', '+96100000011', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 4, '+96155555555', 567894321, 'Finance'),
  ('555555555', 'ComplianceOfficer', 62000, '2021-07-23', 'Female', '1993-09-30', 'olivia.thomas@example.com', 'Olivia', 'Thomas', '+96100000012', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Coastal Rd', 5, 5, '+96155555555', 567894321, 'Finance'),
  -- Operations Department Employees
  ('543216789', 'OperationsHead', 90000, '2018-08-15', 'Male', '1980-07-22', 'mark.stevens@example.com', 'Mark', 'Stevens', '+96100000013', 'Lebanon', 'South', 'Sidon', 'Corniche', 3, 6, '+96133333333', NULL, 'Operations'),
  ('666666666', 'AdminAssistant', 50000, '2019-05-20', 'Female', '1992-01-15', 'anna.miller@example.com', 'Anna', 'Miller', '+96100000014', 'Lebanon', 'South', 'Sidon', 'Corniche', 3, 7, '+96133333333', 543216789, 'Operations'),
  -- IT Department Employee
  ('678912345', 'ITSpecialist', 85000, '2020-03-10', 'Male', '1983-12-05', 'kevin.lee@example.com', 'Kevin', 'Lee', '+96100000015', 'Lebanon', 'Mount Lebanon', 'Byblos', 'Roman Street', 6, 7, '+96166666666', NULL, 'IT'),
  -- Customer Support Department Employees
  ('876543219', 'SupportManager', 80000, '2017-11-01', 'Female', '1985-04-18', 'laura.kim@example.com', 'Laura', 'Kim', '+96100000016', 'Lebanon', 'South', 'Tyre', 'Port Road', 2, 1, '+96177777777', NULL, 'Customer Support'),
  ('777777777', 'AdminAssistant', 48000, '2019-06-15', 'Male', '1990-08-30', 'john.park@example.com', 'John', 'Park', '+96100000017', 'Lebanon', 'South', 'Tyre', 'Port Road', 2, 2, '+96177777777', 876543219, 'Customer Support'),
  -- Logistics Department Employees
  ('345678912', 'LogisticsHead', 90000, '2015-04-01', 'Male', '1979-02-25', 'peter.johnson@example.com', 'Peter', 'Johnson', '+96100000018', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 2, '+96188888888', NULL, 'Logistics'),
  ('888888881', 'AdminAssistant', 47000, '2018-05-10', 'Female', '1991-09-15', 'susan.martin@example.com', 'Susan', 'Martin', '+96100000019', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 3, '+96188888888', 345678912, 'Logistics'),
  ('888888882', 'ProcurementOfficer', 55000, '2019-07-22', 'Male', '1988-12-08', 'brian.davis@example.com', 'Brian', 'Davis', '+96100000020', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Rd', 3, 4, '+96188888888', 345678912, 'Logistics'),
  -- Legal Department Employee
  ('456789123', 'LegalAdvisor', 95000, '2016-09-05', 'Male', '1977-11-11', 'richard.harris@example.com', 'Richard', 'Harris', '+96100000021', 'Lebanon', 'North', 'Batroun', 'Old City', 1, 1, '+96199999999', NULL, 'Legal'),
  -- Training Department Employees
  ('789123456', 'Trainer', 80000, '2020-01-05', 'Female', '1984-05-25', 'emily.clark@example.com', 'Emily', 'Clark', '+96100000022', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 10, '+96124681357', NULL, 'Training'),
  ('999999991', 'Trainer', 60000, '2021-04-12', 'Male', '1992-03-18', 'michael.brown@example.com', 'Michael', 'Brown', '+96100000023', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 11, '+96124681357', 789123456, 'Training'),
  ('999999992', 'Trainer', 61000, '2021-07-30', 'Female', '1989-09-07', 'jessica.wilson@example.com', 'Jessica', 'Wilson', '+96100000024', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 12, '+96124681357', 789123456, 'Training'),
  ('999999993', 'AdminAssistant', 50000, '2022-02-18', 'Male', '1994-12-22', 'robert.moore@example.com', 'Robert', 'Moore', '+96100000025', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 3, 13, '+96124681357', 789123456, 'Training'),
  -- Facilities Department Employee
  ('987123456', 'FacilitiesManager', 85000, '2016-03-15', 'Male', '1975-08-05', 'george.anderson@example.com', 'George', 'Anderson', '+96100000026', 'Lebanon', 'Mount Lebanon', 'Choueifat', 'Railway Rd', 7, 3, '+96111223344', NULL, 'Facilities'),
  -- R&D Department Employee
  ('234567891', 'R&DManager', 95000, '2020-05-10', 'Female', '1983-02-20', 'rachel.adams@example.com', 'Rachel', 'Adams', '+96100000027', 'Lebanon', 'Beirut', 'Beirut', 'Downtown', 9, 11, '+96112345678', NULL, 'R&D'),
  -- Driver Employees
  ('023456789', 'Driver', 35000, '2020-05-12', 'Male', '1988-03-15', 'michael.jordan@nexstore.io', 'Michael', 'Jordan', '+96100000030', 'Lebanon', 'Beirut', 'Beirut', 'Main Street', 5, 2, '+96111111111', NULL, 'Logistics'),
  ('087654321', 'Driver', 32000, '2021-07-18', 'Female', '1992-07-20', 'emily.clarkson@nexstore.io', 'Emily', 'Clarkson', '+96100000031', 'Lebanon', 'North', 'Tripoli', 'Sea Road', 3, 1, '+96122222222', NULL, 'Logistics'),
  ('067894321', 'Driver', 38000, '2019-09-03', 'Male', '1985-11-11', 'richard.lewis@nexstore.io', 'Richard', 'Lewis', '+96100000032', 'Lebanon', 'Mount Lebanon', 'Jounieh', 'Harbor Lane', 2, 5, '+96155555555', NULL, 'Logistics'),
  ('043216789', 'Driver', 37000, '2022-01-22', 'Female', '1990-04-30', 'anna.roberts@nexstore.io', 'Anna', 'Roberts', '+96100000033', 'Lebanon', 'South', 'Sidon', 'Coastal Road', 6, 4, '+96133333333', NULL, 'Logistics'),
  ('078912345', 'Driver', 34000, '2021-12-14', 'Male', '1989-08-25', 'kevin.baker@nexstore.io', 'Kevin', 'Baker', '+96100000034', 'Lebanon', 'Beqaa', 'Zahle', 'Valley Drive', 1, 3, '+96144444444', NULL, 'Logistics'),
  ('076543219', 'Driver', 36000, '2020-11-01', 'Female', '1987-09-18', 'olivia.james@nexstore.io', 'Olivia', 'James', '+96100000035', 'Lebanon', 'South', 'Tyre', 'Marina Rd', 2, 6, '+96177777777', NULL, 'Logistics'),
  ('045678912', 'Driver', 40000, '2018-06-20', 'Male', '1982-12-06', 'john.ryan@nexstore.io', 'John', 'Ryan', '+96100000036', 'Lebanon', 'Beqaa', 'Baalbek', 'Temple Avenue', 4, 2, '+96188888888', NULL, 'Logistics'),
  ('056789123', 'Driver', 39000, '2017-04-25', 'Female', '1984-05-15', 'susan.richards@nexstore.io', 'Susan', 'Richards', '+96100000037', 'Lebanon', 'North', 'Batroun', 'Market St', 3, 1, '+96199999999', NULL, 'Logistics'),
  ('034567891', 'Driver', 37000, '2020-08-12', 'Male', '1988-11-27', 'mark.harrison@nexstore.io', 'Mark', 'Harrison', '+96100000038', 'Lebanon', 'Beirut', 'Beirut', 'Central Rd', 5, 4, '+96112345678', NULL, 'Logistics'),
  ('089123456', 'Driver', 42000, '2016-03-15', 'Female', '1980-10-10', 'jessica.brooks@nexstore.io', 'Jessica', 'Brooks', '+96100000039', 'Lebanon', 'Mount Lebanon', 'Dora', 'Industrial Zone', 7, 6, '+96124681357', NULL, 'Logistics'),
  ('054321987', 'Driver', 31000, '2023-02-28', 'Male', '1995-03-05', 'daniel.hunt@nexstore.io', 'Daniel', 'Hunt', '+96100000040', 'Lebanon', 'Mount Lebanon', 'Aley', 'Summit Ave', 3, 5, '+96165432198', NULL, 'Logistics'),
  ('021987654', 'Driver', 38000, '2018-11-30', 'Female', '1983-07-23', 'emma.jenkins@nexstore.io', 'Emma', 'Jenkins', '+96100000041', 'Lebanon', 'Mount Lebanon', 'Choueifat', 'Green Lane', 2, 3, '+96111223344', NULL, 'Logistics'),
  ('087123456', 'Driver', 40000, '2017-07-18', 'Male', '1981-06-02', 'alex.carter@nexstore.io', 'Alex', 'Carter', '+96100000042', 'Lebanon', 'Mount Lebanon', 'Byblos', 'Old Harbor', 6, 7, '+96166666666', NULL, 'Logistics'),
  ('054789321', 'Driver', 41000, '2019-10-05', 'Female', '1986-01-30', 'sophie.turner@nexstore.io', 'Sophie', 'Turner', '+96100000043', 'Lebanon', 'South', 'Sidon', 'Bay St', 2, 6, '+96133333333', NULL, 'Logistics'),
  ('023459876', 'Driver', 43000, '2015-05-22', 'Male', '1978-04-12', 'david.lee@nexstore.io', 'David', 'Lee', '+96100000044', 'Lebanon', 'Beirut', 'Beirut', 'West Blvd', 5, 2, '+96111111111', NULL, 'Logistics');

-- Step 4: Update departments to set Employee_SSN (manager's SSN)
UPDATE Department
SET
  Employee_SSN = CASE Name
    WHEN 'Sales' THEN '123456789'
    WHEN 'Marketing' THEN '987654321'
    WHEN 'HR' THEN '123459876'
    WHEN 'Finance' THEN '567894321'
    WHEN 'Operations' THEN '543216789'
    WHEN 'IT' THEN '678912345'
    WHEN 'Customer Support' THEN '876543219'
    WHEN 'Logistics' THEN '345678912'
    WHEN 'Legal' THEN '456789123'
    WHEN 'Training' THEN '789123456'
    WHEN 'Facilities' THEN '987123456'
    WHEN 'R&D' THEN '234567891'
    ELSE Employee_SSN
  END;

-- Step 5: Update branches to set Employee_SSN
UPDATE Branch
SET
  Employee_SSN = CASE Phone_number
    WHEN '+96111111111' THEN '123456789'
    WHEN '+96122222222' THEN '987654321'
    WHEN '+96133333333' THEN '543216789'
    WHEN '+96144444444' THEN '123459876'
    WHEN '+96155555555' THEN '567894321'
    WHEN '+96166666666' THEN '678912345'
    WHEN '+96177777777' THEN '876543219'
    WHEN '+96188888888' THEN '345678912'
    WHEN '+96199999999' THEN '456789123'
    WHEN '+96112345678' THEN '234567891'
    WHEN '+96124681357' THEN '789123456'
    WHEN '+96165432198' THEN '654321987'
    WHEN '+96111223344' THEN '987123456'
    ELSE Employee_SSN
  END;

COMMIT;