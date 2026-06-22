USE SNEEP_DB;
GO

/*====================================================
Stored Procedure 1
Add New Patient
====================================================*/
CREATE OR ALTER PROCEDURE sp_AddPatient
(
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Gender NVARCHAR(10),
    @BirthDate DATE,
    @Phone VARCHAR(20),
    @Email VARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Patient
    (
        FirstName,
        LastName,
        Gender,
        BirthDate,
        Phone,
        Email
    )
    VALUES
    (
        @FirstName,
        @LastName,
        @Gender,
        @BirthDate,
        @Phone,
        @Email
    );
END;
GO


/*====================================================
Stored Procedure 2
Delete Alert
Deletes an alert by AlertID
====================================================*/
CREATE OR ALTER PROCEDURE sp_DeleteAlert
(
    @AlertID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Alert
    WHERE AlertID = @AlertID;
END;
GO


/*====================================================
Stored Procedure 3
Calculate Average Oxygen Level
Returns average oxygen level for a session
====================================================*/
CREATE OR ALTER PROCEDURE sp_CalculateAverageOxygen
(
    @SessionID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @SessionID AS SessionID,
        AVG(OxygenLevel) AS Average_Oxygen_Level
    FROM SensorData
    WHERE SessionID = @SessionID;
END;
GO