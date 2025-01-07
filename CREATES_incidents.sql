USE POLICE

go

CREATE TABLE Incidents (
    IncidentID INT IDENTITY (1,1) PRIMARY KEY,
    IncidentDateTime DATETIME NOT NULL,
    CrimeType VARCHAR(255) NOT NULL,
    Status VARCHAR(100) NOT NULL,
    AssignedPolicemen TEXT,
    Location VARCHAR(255) NOT NULL
);
