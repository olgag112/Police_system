USE POLICE

go


INSERT INTO Departments (DepartmentName)
VALUES
('Patrol'),
('Investigations'),
('Forensics'),
('Traffic'),
('Cleaning Service');


INSERT INTO Supervisors (FullName, ContactPhone, ContactEmail)
VALUES
('Jan Kowalski', '123-456-789', 'jan.kowalski@police.local'),
('Anna Nowak', '987-654-321', 'anna.nowak@police.local'),
('Marek Wójcik', '555-123-456', 'marek.wojcik@police.local'),
('Ewa Lewandowska', '666-789-123', 'ewa.lewandowska@police.local');


INSERT INTO Officers (BadgeNumber, FullName, Rank, DepartmentID, SupervisorID, Phone, Email, DateOfHire, AvailabilityStatus)
VALUES
('P12345', 'Piotr Zieliński', 'Senior Officer', 1, 1, '555-789-101', 'piotr.zielinski@police.local', '2018-05-10', 'Active'),
('P12346', 'Tomasz Kowalski', 'Officer', 2, 2, '555-789-102', 'tomasz.kowalski@police.local', '2020-06-12', 'On Leave'),
('P12347', 'Magdalena Jankowska', 'Detective', 2, 3, '555-789-103', 'magdalena.jankowska@police.local', '2015-03-25', 'Active'),
('P12348', 'Paweł Nowak', 'Traffic Officer', 4, 4, '555-789-104', 'pawel.nowak@police.local', '2017-07-15', 'Active');


INSERT INTO InvestigationUnit (FullName, JobTitle, DepartmentID, SupervisorID, Phone, Email, DateOfHire)
VALUES
('Zofia Wiśniewska', 'Investigator', 2, 2, '555-555-100', 'zofia.wisniewska@police.local', '2019-01-10'),
('Krzysztof Polak', 'Investigator', 2, 3, '555-555-101', 'krzysztof.polak@police.local', '2021-03-22'),
('Michał Zieliński', 'Investigator', 2, 4, '555-555-102', 'michal.zielinski@police.local', '2016-08-30');


INSERT INTO ForensicDepartment (FullName, JobTitle, DepartmentID, SupervisorID, Phone, Email, DateOfHire)
VALUES
('Katarzyna Mazur', 'Forensic Expert', 3, 2, '555-555-200', 'katarzyna.mazur@police.local', '2018-04-18'),
('Andrzej Kaczmarek', 'Forensic Technician', 3, 3, '555-555-201', 'andrzej.kaczmarek@police.local', '2020-07-14'),
('Beata Kalinowska', 'Forensic Investigator', 3, 4, '555-555-202', 'beata.kalinowska@police.local', '2017-11-01');


INSERT INTO CleaningService (FullName, Shift, DepartmentID, SupervisorID, Phone, Email, DateOfHire)
VALUES
('Katarzyna Lewandowska', 'Morning', 5, 1, '555-555-300', 'katarzyna.lewandowska@police.local', '2022-05-10'),
('Marek Piątek', 'Afternoon', 5, 2, '555-555-301', 'marek.piatek@police.local', '2023-01-20'),
('Monika Nowicka', 'Night', 5, 3, '555-555-302', 'monika.nowicka@police.local', '2021-11-15');
