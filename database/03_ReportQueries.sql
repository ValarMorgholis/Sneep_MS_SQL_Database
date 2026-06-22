
USE SNEEP_DB;
GO

/*====================================================
Query 1
List all patients with Severe sleep apnea
====================================================*/
SELECT
    P.PatientID,
    P.FirstName,
    P.LastName,
    A.Severity,
    A.ApneaEvents,
    A.AverageOxygen
FROM Patient P
JOIN SleepSession S
    ON P.PatientID = S.PatientID
JOIN AnalysisResult A
    ON S.SessionID = A.SessionID
WHERE A.Severity = 'Severe';
GO


/*====================================================
Query 2
Show sleep sessions longer than 7 hours
====================================================*/
SELECT
    P.FirstName,
    P.LastName,
    S.SessionID,
    S.StartTime,
    S.EndTime,
    S.DurationHours
FROM Patient P
JOIN SleepSession S
    ON P.PatientID = S.PatientID
WHERE S.DurationHours > 7;
GO


/*====================================================
Query 3
Show all reports with doctor information
====================================================*/
SELECT
    D.FullName,
    D.Specialty,
    R.ReportDate,
    R.DiagnosisSummary
FROM Doctor D
JOIN Report R
    ON D.DoctorID = R.DoctorID
ORDER BY R.ReportDate DESC;
GO


/*====================================================
Query 4
Show critical alerts
====================================================*/
SELECT
    P.FirstName,
    P.LastName,
    A.AlertType,
    A.Status,
    A.AlertTime
FROM Patient P
JOIN SleepSession S
    ON P.PatientID = S.PatientID
JOIN Alert A
    ON S.SessionID = A.SessionID
WHERE A.AlertType = 'Critical';
GO


/*====================================================
Query 5
Average oxygen level of each patient
====================================================*/
SELECT
    P.PatientID,
    P.FirstName,
    P.LastName,
    AVG(SD.OxygenLevel) AS Average_Oxygen_Level
FROM Patient P
JOIN SleepSession S
    ON P.PatientID = S.PatientID
JOIN SensorData SD
    ON S.SessionID = SD.SessionID
GROUP BY
    P.PatientID,
    P.FirstName,
    P.LastName
ORDER BY Average_Oxygen_Level DESC;
GO

