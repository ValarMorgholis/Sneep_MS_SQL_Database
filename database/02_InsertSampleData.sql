sql
USE SNEEP_DB
GO

-----------------------------------------------------
-- Patient (10 Records)
-----------------------------------------------------
INSERT INTO Patient (FirstName,LastName,Gender,BirthDate,Phone,Email)
VALUES
('Ali','Ahmadi','Male','1990-05-10','09121111111','ali@gmail.com'),
('Reza','Karimi','Male','1988-03-15','09121111112','reza@gmail.com'),
('Sara','Mohammadi','Female','1995-07-20','09121111113','sara@gmail.com'),
('Maryam','Hosseini','Female','1992-11-12','09121111114','maryam@gmail.com'),
('Amir','Jafari','Male','1985-09-01','09121111115','amir@gmail.com'),
('Nima','Rahimi','Male','1998-04-08','09121111116','nima@gmail.com'),
('Fatemeh','Nazari','Female','1994-01-30','09121111117','fatemeh@gmail.com'),
('Hossein','Safari','Male','1987-12-18','09121111118','hossein@gmail.com'),
('Leila','Akbari','Female','1991-06-21','09121111119','leila@gmail.com'),
('Mehdi','Ghasemi','Male','1989-08-14','09121111120','mehdi@gmail.com');

-----------------------------------------------------
-- Doctor (10 Records)
-----------------------------------------------------
INSERT INTO Doctor (FullName,Specialty,Phone,Email)
VALUES
('Dr. Hosseini','Pulmonologist','09123333331','h1@gmail.com'),
('Dr. Karimi','Neurologist','09123333332','h2@gmail.com'),
('Dr. Ahmadi','Cardiologist','09123333333','h3@gmail.com'),
('Dr. Jafari','ENT Specialist','09123333334','h4@gmail.com'),
('Dr. Moradi','Pulmonologist','09123333335','h5@gmail.com'),
('Dr. Ebrahimi','Neurologist','09123333336','h6@gmail.com'),
('Dr. Nouri','Cardiologist','09123333337','h7@gmail.com'),
('Dr. Safari','Pulmonologist','09123333338','h8@gmail.com'),
('Dr. Azimi','ENT Specialist','09123333339','h9@gmail.com'),
('Dr. Salimi','Pulmonologist','09123333340','h10@gmail.com');

-----------------------------------------------------
-- MedicalHistory (10 Records)
-----------------------------------------------------
INSERT INTO MedicalHistory
(PatientID,Weight,SmokingStatus,UnderlyingDisease,Medications)
VALUES
(1,85,1,'Hypertension','Aspirin'),
(2,92,0,'Diabetes','Metformin'),
(3,70,0,'None','None'),
(4,65,0,'Asthma','Ventolin'),
(5,95,1,'Hypertension','Losartan'),
(6,78,0,'None','None'),
(7,68,0,'Depression','Sertraline'),
(8,88,1,'Diabetes','Metformin'),
(9,60,0,'None','None'),
(10,90,1,'Heart Disease','Aspirin');

-----------------------------------------------------
-- Device (10 Records)
-----------------------------------------------------
INSERT INTO Device
(PatientID,SerialNumber,Model,ActivationDate,Status)
VALUES
(1,'SN001','SNEEP-V1','2026-01-01','Active'),
(2,'SN002','SNEEP-V1','2026-01-02','Active'),
(3,'SN003','SNEEP-V1','2026-01-03','Active'),
(4,'SN004','SNEEP-V1','2026-01-04','Active'),
(5,'SN005','SNEEP-V1','2026-01-05','Active'),
(6,'SN006','SNEEP-V1','2026-01-06','Inactive'),
(7,'SN007','SNEEP-V1','2026-01-07','Active'),
(8,'SN008','SNEEP-V1','2026-01-08','Active'),
(9,'SN009','SNEEP-V1','2026-01-09','Inactive'),
(10,'SN010','SNEEP-V1','2026-01-10','Active');

-----------------------------------------------------
-- SleepSession (10 Records)
-----------------------------------------------------
INSERT INTO SleepSession
(PatientID,StartTime,EndTime,DurationHours)
VALUES
(1,'2026-06-01 22:00','2026-06-02 06:00',8),
(2,'2026-06-01 23:00','2026-06-02 05:30',6.5),
(3,'2026-06-02 22:30','2026-06-03 06:30',8),
(4,'2026-06-02 23:15','2026-06-03 05:45',6.5),
(5,'2026-06-03 22:00','2026-06-04 07:00',9),
(6,'2026-06-03 23:00','2026-06-04 06:00',7),
(7,'2026-06-04 22:45','2026-06-05 06:45',8),
(8,'2026-06-04 23:30','2026-06-05 05:30',6),
(9,'2026-06-05 22:00','2026-06-06 06:00',8),
(10,'2026-06-05 23:00','2026-06-06 07:00',8);

-----------------------------------------------------
-- SensorData (10 Records)
-----------------------------------------------------
INSERT INTO SensorData
(SessionID,OxygenLevel,PulseRate,Temperature)
VALUES
(1,95,72,36.7),
(2,88,80,36.9),
(3,97,69,36.6),
(4,90,78,36.8),
(5,84,85,37.0),
(6,96,70,36.5),
(7,92,75,36.7),
(8,87,82,36.8),
(9,94,73,36.6),
(10,85,84,37.1);

-----------------------------------------------------
-- AnalysisResult (10 Records)
-----------------------------------------------------
INSERT INTO AnalysisResult
(SessionID,Severity,ApneaEvents,AverageOxygen)
VALUES
(1,'Mild',8,95),
(2,'Moderate',15,88),
(3,'Normal',3,97),
(4,'Moderate',18,90),
(5,'Severe',30,84),
(6,'Normal',2,96),
(7,'Mild',10,92),
(8,'Moderate',20,87),
(9,'Mild',7,94),
(10,'Severe',28,85);

-----------------------------------------------------
-- Alert (10 Records)
-----------------------------------------------------
INSERT INTO Alert
(SessionID,AlertTime,AlertType,Status)
VALUES
(1,GETDATE(),'Warning','Closed'),
(2,GETDATE(),'Critical','Open'),
(3,GETDATE(),'Normal','Closed'),
(4,GETDATE(),'Warning','Closed'),
(5,GETDATE(),'Critical','Open'),
(6,GETDATE(),'Normal','Closed'),
(7,GETDATE(),'Warning','Closed'),
(8,GETDATE(),'Critical','Open'),
(9,GETDATE(),'Normal','Closed'),
(10,GETDATE(),'Critical','Open');

-----------------------------------------------------
-- Report (10 Records)
-----------------------------------------------------
INSERT INTO Report
(AnalysisID,DoctorID,ReportDate,DiagnosisSummary)
VALUES
(1,1,GETDATE(),'Mild sleep apnea'),
(2,2,GETDATE(),'Moderate apnea detected'),
(3,3,GETDATE(),'Normal condition'),
(4,4,GETDATE(),'Moderate apnea'),
(5,5,GETDATE(),'Severe apnea'),
(6,6,GETDATE(),'Healthy sleep'),
(7,7,GETDATE(),'Mild apnea'),
(8,8,GETDATE(),'Moderate apnea'),
(9,9,GETDATE(),'Normal'),
(10,10,GETDATE(),'Severe apnea');
GO
