INSERT INTO Departments (DepartmentName)
VALUES
    ('Patrol'),
    ('Detective'),
    ('Traffic Control');

INSERT INTO Supervisors (FullName, ContactPhone, ContactEmail)
VALUES
    ('Anna Barnes', '555-1111', 'anna.barnes@example.com'),
    ('Jacob Willis', '555-2222', 'jacob.willis@example.com'),
    ('Rebecca Morgan', '555-3333', 'rebecca.morgan@example.com');

INSERT INTO CleaningService (FullName, Shift, DepartmentID, SupervisorID, Phone, Email, DateOfHire)
VALUES
    ('Ethan Walker', 'Night', 1, 1, '555-4444', 'ethan.walker@example.com', '2022-06-01'),
    ('Sophia Green', 'Day', 1, 2, '555-5555', 'sophia.green@example.com', '2021-03-15'),
    ('Benjamin Adams', 'Night', 2, 3, '555-6666', 'ben.adams@example.com', '2020-08-21');

INSERT INTO IT_Department (FullName, JobTitle, DepartmentID, SupervisorID, Phone, Email, DateOfHire)
VALUES
    ('Liam Johnson', 'System Admin', 2, 2, '555-7777', 'liam.johnson@example.com', '2019-10-10'),
    ('Olivia Brown', 'Network Engineer', 3, 3, '555-8888', 'olivia.brown@example.com', '2020-11-22'),
    ('Noah Davis', 'Support Technician', 3, 1, '555-9999', 'noah.davis@example.com', '2023-01-05');
