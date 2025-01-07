CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY AUTO_INCREMENT,
    IncidentDateTime DATETIME NOT NULL,
    CrimeType VARCHAR(255) NOT NULL,
    Status VARCHAR(100) NOT NULL,
    AssignedPolicemen TEXT,
    Location VARCHAR(255) NOT NULL
);
