USE POLICE

go

--show inmates which have charges for assault or robbery

SELECT InmateID, FullName, InmateNumber, Charges
FROM Inmates
WHERE Charges LIKE '%Assault%' OR Charges LIKE '%Robbery%';

--show incidents from 2024
SELECT IncidentID, IncidentDateTime, CrimeType, Status, Location
FROM Incidents
WHERE YEAR(IncidentDateTime) = 2024;

--show which crimetypes are most common

SELECT CrimeType, COUNT(*) AS CrimeCount
FROM Incidents
GROUP BY CrimeType
ORDER BY CrimeCount DESC;

--show inmates which were admissed after 01.01.2022

SELECT InmateID, FullName, InmateNumber, AdmissionDate
FROM Inmates
WHERE AdmissionDate > '2022-01-01';

--list of all policemans assigned to specific crimetype

SELECT IncidentID, CrimeType, AssignedPolicemen
FROM Incidents
WHERE CrimeType = 'Traffic Violation';

--oldest and youngest inmate


SELECT TOP 1 FullName, DateOfBirth
FROM Inmates
ORDER BY DateOfBirth ASC;

SELECT TOP 1 FullName, DateOfBirth
FROM Inmates
ORDER BY DateOfBirth DESC;

--incidents assigned to specific policeman

SELECT IncidentID, CrimeType, IncidentDateTime, Location
FROM Incidents
WHERE AssignedPolicemen LIKE '3';

