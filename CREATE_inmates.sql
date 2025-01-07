USE POLICE

go

CREATE TABLE Inmates (
    InmateID INT IDENTITY (1,1) PRIMARY KEY,
    FullName VARCHAR(255) NOT NULL,
    InmateNumber VARCHAR(50) NOT NULL UNIQUE,
    DateOfBirth DATE NOT NULL,
    Charges TEXT NOT NULL,
    AdmissionDate DATE NOT NULL
);
