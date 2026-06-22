IF DB_ID('SNEEP_DB') IS NULL
BEGIN
    CREATE DATABASE SNEEP_DB;
END
GO

USE SNEEP_DB;
GO

-- حذف جدول‌ها در صورت وجود (به ترتیب وابستگی)
DROP TABLE IF EXISTS Report;
DROP TABLE IF EXISTS Alert;
DROP TABLE IF EXISTS AnalysisResult;
DROP TABLE IF EXISTS SensorData;
DROP TABLE IF EXISTS SleepSession;
DROP TABLE IF EXISTS Device;
DROP TABLE IF EXISTS MedicalHistory;
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Patient;
GO

CREATE TABLE Patient (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(10),
    BirthDate DATE,
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Doctor (
    DoctorID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Specialty NVARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE MedicalHistory (
    HistoryID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT UNIQUE NOT NULL,
    Weight FLOAT,
    SmokingStatus BIT,
    UnderlyingDisease NVARCHAR(200),
    Medications NVARCHAR(200),

    CONSTRAINT FK_MedicalHistory_Patient
        FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
);

CREATE TABLE Device (
    DeviceID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    SerialNumber VARCHAR(50),
    Model VARCHAR(50),
    ActivationDate DATE,
    Status VARCHAR(20),

    CONSTRAINT FK_Device_Patient
        FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
);

CREATE TABLE SleepSession (
    SessionID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT NOT NULL,
    StartTime DATETIME,
    EndTime DATETIME,
    DurationHours FLOAT,

    CONSTRAINT FK_SleepSession_Patient
        FOREIGN KEY (PatientID)
        REFERENCES Patient(PatientID)
);

CREATE TABLE SensorData (
    DataID INT IDENTITY(1,1) PRIMARY KEY,
    SessionID INT NOT NULL,
    OxygenLevel FLOAT,
    PulseRate INT,
    Temperature FLOAT,

    CONSTRAINT FK_SensorData_Session
        FOREIGN KEY (SessionID)
        REFERENCES SleepSession(SessionID)
);

CREATE TABLE AnalysisResult (
    AnalysisID INT IDENTITY(1,1) PRIMARY KEY,
    SessionID INT UNIQUE NOT NULL,
    Severity NVARCHAR(20),
    ApneaEvents INT,
    AverageOxygen FLOAT,

    CONSTRAINT FK_AnalysisResult_Session
        FOREIGN KEY (SessionID)
        REFERENCES SleepSession(SessionID)
);

CREATE TABLE Alert (
    AlertID INT IDENTITY(1,1) PRIMARY KEY,
    SessionID INT NOT NULL,
    AlertTime DATETIME,
    AlertType NVARCHAR(50),
    Status NVARCHAR(20),

    CONSTRAINT FK_Alert_Session
        FOREIGN KEY (SessionID)
        REFERENCES SleepSession(SessionID)
);

CREATE TABLE Report (
    ReportID INT IDENTITY(1,1) PRIMARY KEY,
    AnalysisID INT NOT NULL,
    DoctorID INT NOT NULL,
    ReportDate DATETIME,
    DiagnosisSummary NVARCHAR(500),

    CONSTRAINT FK_Report_Analysis
        FOREIGN KEY (AnalysisID)
        REFERENCES AnalysisResult(AnalysisID),

    CONSTRAINT FK_Report_Doctor
        FOREIGN KEY (DoctorID)
        REFERENCES Doctor(DoctorID)
);
GO