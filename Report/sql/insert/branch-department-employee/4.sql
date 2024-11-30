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