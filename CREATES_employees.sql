USE POLICE;

go

CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,  
    DepartmentName VARCHAR(255) NOT NULL
);


CREATE TABLE Supervisors (
    SupervisorID INT IDENTITY(1,1) PRIMARY KEY, 
    FullName VARCHAR(255) NOT NULL,
    ContactPhone VARCHAR(15),
    ContactEmail VARCHAR(255)
);


CREATE TABLE Officers (
    OfficerID INT IDENTITY(1,1) PRIMARY KEY,  
    BadgeNumber VARCHAR(50) NOT NULL UNIQUE,
    FullName VARCHAR(255) NOT NULL,
    Rank VARCHAR(100),
    DepartmentID INT,
    SupervisorID INT,
    Phone VARCHAR(15),
    Email VARCHAR(255),
    DateOfHire DATE NOT NULL,
    AvailabilityStatus VARCHAR(15) DEFAULT 'Active',  
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)
);


CREATE TABLE InvestigationUnit (
    InvestigatorID INT IDENTITY(1,1) PRIMARY KEY, 
    FullName VARCHAR(255) NOT NULL,
    JobTitle VARCHAR(255),
    DepartmentID INT,
    SupervisorID INT,
    Phone VARCHAR(15),
    Email VARCHAR(255),
    DateOfHire DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)
);


CREATE TABLE ForensicDepartment (
    ForensicID INT IDENTITY(1,1) PRIMARY KEY,  
    FullName VARCHAR(255) NOT NULL,
    JobTitle VARCHAR(255),
    DepartmentID INT,
    SupervisorID INT,
    Phone VARCHAR(15),
    Email VARCHAR(255),
    DateOfHire DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)
);


CREATE TABLE CleaningService (
    CleaningID INT IDENTITY(1,1) PRIMARY KEY, 
    FullName VARCHAR(255) NOT NULL,
    Shift VARCHAR(50),
    DepartmentID INT,
    SupervisorID INT,
    Phone VARCHAR(15),
    Email VARCHAR(255),
    DateOfHire DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)
);
