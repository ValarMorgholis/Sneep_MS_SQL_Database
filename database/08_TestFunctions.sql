USE SNEEP_DB;
GO

SELECT
    SessionID,
    PatientID,
    StartTime,
    EndTime,
    dbo.fn_CalculateSleepHours(StartTime, EndTime) AS SleepHours
FROM SleepSession;
GO