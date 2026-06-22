USE SNEEP_DB;
GO

/*====================================================
Test sp_AddPatient
Add a new patient
====================================================*/
EXEC sp_AddPatient
    @FirstName = 'Hasan',
    @LastName = 'Moradi',
    @Gender = 'Male',
    @BirthDate = '1997-05-15',
    @Phone = '09127777777',
    @Email = 'hasan@gmail.com';
GO

SELECT *
FROM Patient
WHERE FirstName = 'Hasan'
AND LastName = 'Moradi';
GO


/*====================================================
Test sp_DeleteAlert
Delete AlertID = 5
====================================================*/
SELECT *
FROM Alert
WHERE AlertID = 5;
GO

EXEC sp_DeleteAlert
    @AlertID = 5;
GO

SELECT *
FROM Alert
WHERE AlertID = 5;
GO


/*====================================================
Test sp_CalculateAverageOxygen
Calculate average oxygen level for SessionID = 2
====================================================*/
EXEC sp_CalculateAverageOxygen
    @SessionID = 2;
GO