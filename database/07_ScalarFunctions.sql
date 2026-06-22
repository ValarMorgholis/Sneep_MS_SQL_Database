USE SNEEP_DB;
GO

/*====================================================
Function: fn_CalculateSleepHours
Calculates sleep duration in hours
====================================================*/
CREATE OR ALTER FUNCTION fn_CalculateSleepHours
(
    @StartTime DATETIME,
    @EndTime DATETIME
)
RETURNS DECIMAL(5,2)
AS
BEGIN
    DECLARE @SleepHours DECIMAL(5,2);

    SET @SleepHours =
        CAST(DATEDIFF(MINUTE, @StartTime, @EndTime) AS DECIMAL(5,2))
        / 60.0;

    RETURN @SleepHours;
END;
GO