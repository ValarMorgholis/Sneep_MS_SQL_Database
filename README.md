# SNEEP Database Project

Sleep Apnea Monitoring System Database implemented using Microsoft SQL Server.

## 📌 Project Overview

SNEEP (Sleep Apnea Monitoring System) is a database project designed for monitoring and analyzing sleep apnea data. The system stores patient information, sleep sessions, sensor measurements, analysis results, alerts, and medical reports.

This project was developed as part of a Database course using Microsoft SQL Server.

---

## 🎯 Objectives

- Store patient information and medical history.
- Record sleep sessions and sensor measurements.
- Analyze sleep apnea events.
- Generate alerts and medical reports.
- Demonstrate database concepts including:
  - Entity Relationship Diagram (ERD)
  - Primary Keys and Foreign Keys
  - SQL Queries
  - Stored Procedures
  - Scalar Functions

---

## 🗂 Database Tables

- Patient
- Doctor
- MedicalHistory
- Device
- SleepSession
- SensorData
- AnalysisResult
- Alert
- Report

---

## 📁 Repository Structure

```text
database/
│
├── 01_CreateDatabaseAndTables.sql
├── 02_InsertSampleData.sql
├── 03_ReportQueries.sql
├── 04_DataModificationExamples.sql
├── 05_StoredProcedures.sql
├── 06_TestStoredProcedures.sql
├── 07_ScalarFunctions.sql
└── 08_TestFunctions.sql
```

---

## ⚙️ Technologies

- Microsoft SQL Server 2017
- SQL Server Management Studio (SSMS) 2022
- Draw.io
- GitHub

---

## 📊 SQL Reports

### Query 1

List patients with severe sleep apnea.

### Query 2

Display sleep sessions longer than 7 hours.

### Query 3

Display reports with doctor information.

### Query 4

Display critical alerts.

### Query 5

Calculate average oxygen level for each patient.

---

## 🔧 Stored Procedures

### sp_AddPatient

Adds a new patient to the system.

### sp_DeleteAlert

Deletes an alert by AlertID.

### sp_CalculateAverageOxygen

Calculates the average oxygen level of a sleep session.

---

## 🕒 Scalar Function

### fn_CalculateSleepHours

Calculates sleep duration in hours using SQL Server date and time functions.

---

## 🖼 ER Diagram

The ER diagram files are located in:

```text
diagrams/
├── ER_Diagram.drawio
└── ER_Diagram.png
```

---

## 📄 Documentation

Documentation includes:

- Scenario
- Objectives
- ER Diagram
- Database relationships
- Query screenshots
- Stored procedure examples
- Function examples

---

## 👨‍💻 Author

**M.M. Mirzaei**

Database Course Project

2026
