{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Create table for general departments\
CREATE TABLE Departments (\
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,\
    DepartmentName VARCHAR(255) NOT NULL\
);\
\
-- Create a table for supervisors (generic, as they may exist in different roles)\
CREATE TABLE Supervisors (\
    SupervisorID INT PRIMARY KEY AUTO_INCREMENT,\
    FullName VARCHAR(255) NOT NULL,\
    ContactPhone VARCHAR(15),\
    ContactEmail VARCHAR(255)\
);\
\
-- Create Officers table\
CREATE TABLE Officers (\
    OfficerID INT PRIMARY KEY AUTO_INCREMENT,\
    BadgeNumber VARCHAR(50) NOT NULL UNIQUE,\
    FullName VARCHAR(255) NOT NULL,\
    Rank VARCHAR(100),\
    DepartmentID INT,\
    SupervisorID INT,\
    Phone VARCHAR(15),\
    Email VARCHAR(255),\
    DateOfHire DATE NOT NULL,\
    AvailabilityStatus ENUM('Active', 'On Leave') DEFAULT 'Active',\
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),\
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)\
);\
\
-- Create IT Department Employees table\
CREATE TABLE IT_Department (\
    ITID INT PRIMARY KEY AUTO_INCREMENT,\
    FullName VARCHAR(255) NOT NULL,\
    JobTitle VARCHAR(255),\
    DepartmentID INT,\
    SupervisorID INT,\
    Phone VARCHAR(15),\
    Email VARCHAR(255),\
    DateOfHire DATE NOT NULL,\
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),\
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)\
);\
\
-- Create Cleaning Service Employees table\
CREATE TABLE CleaningService (\
    CleaningID INT PRIMARY KEY AUTO_INCREMENT,\
    FullName VARCHAR(255) NOT NULL,\
    Shift VARCHAR(50),\
    DepartmentID INT,\
    SupervisorID INT,\
    Phone VARCHAR(15),\
    Email VARCHAR(255),\
    DateOfHire DATE NOT NULL,\
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),\
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)\
);\
}