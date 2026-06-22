USE SNEEP_DB;
GO

/*====================================================
UPDATE Query
Change phone number of PatientID = 3
====================================================*/
UPDATE Patient
SET Phone = '09125555555'
WHERE PatientID = 3;

SELECT *
FROM Patient
WHERE PatientID = 3;
GO


/*====================================================
UPDATE Query
Deactivate device of PatientID = 6
====================================================*/
UPDATE Device
SET Status = 'Inactive'
WHERE PatientID = 6;

SELECT *
FROM Device
WHERE PatientID = 6;
GO


/*====================================================
DELETE Query
Delete Alert with AlertID = 3
====================================================*/
DELETE FROM Alert
WHERE AlertID = 3;

SELECT *
FROM Alert;
GO


/*====================================================
DELETE Query
Delete Report with ReportID = 9
====================================================*/
DELETE FROM Report
WHERE ReportID = 9;

SELECT *
FROM Report;
GO

