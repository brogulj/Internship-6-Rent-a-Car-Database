CREATE DATABASE RentACar2;
USE RentACar2;
CREATE TABLE Workers
(Id        INT IDENTITY(1, 1) PRIMARY KEY, 
 FirstName NVARCHAR(30) NOT NULL, 
 LastName  NVARCHAR(30) NOT NULL
);
CREATE TABLE Vehicles
(Id                         INT IDENTITY(1, 1) PRIMARY KEY, 
 Manufacturer               NVARCHAR(30) NOT NULL, 
 Model                      NVARCHAR(30) NOT NULL, 
 RegistrationPlate          NVARCHAR(10) NOT NULL, 
 RegistrationExpirationDate DATETIME2 NOT NULL, 
 Category                   NVARCHAR(30) NOT NULL, 
 PricingType                NVARCHAR(30) NOT NULL, 
 KilometersDriven           INT NOT NULL
);
CREATE TABLE Rents
(Id                  INT IDENTITY(1, 1) NOT NULL, 
 WorkerId            INT FOREIGN KEY REFERENCES dbo.Workers(Id), 
 VehicleId           INT FOREIGN KEY REFERENCES dbo.Vehicles(Id), 
 RentDate            DATETIME2 NOT NULL, 
 RentAmount          float CHECK(RentAmount >= 1
                               AND RentAmount % 0.5 = 0) NOT NULL, 
 Price               INT NOT NULL, 
 BuyerFirstName      NVARCHAR(30) NOT NULL, 
 BuyerLastName       NVARCHAR(30) NOT NULL, 
 BuyerDateOfBirth    DATETIME2 CHECK(DATEDIFF(YEAR, BuyerDateOfBirth, GETDATE()) >= 18), 
 BuyerDriversLicense NVARCHAR(30) NOT NULL, 
 BuyerCreditCard     NVARCHAR(17) NOT NULL, 
 RentTimeStamp       DATETIME2
);
INSERT INTO dbo.Workers
(
--Id - column value is auto-generated
FirstName, 
LastName
)
VALUES
('Mirna', 
 'Mirnic'
),
('Vedran', 
 'Vedric'
),
('Marko', 
 'Markic'
),
('Ivan', 
 'Ivic'
),
('Karlo', 
 'Karlovic'
);
INSERT INTO dbo.Vehicles
(
--Id - column value is auto-generated
Manufacturer, 
Model, 
RegistrationPlate, 
RegistrationExpirationDate, 
Category, 
PricingType, 
KilometersDriven
)
VALUES
(
-- Id - INT
'Kia', -- Manufacturer - NVARCHAR
'Rio', -- Model - NVARCHAR
'DA-123-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
'Car', -- Category - NVARCHAR
'City', -- PricingType - NVARCHAR
35000 -- KilometersDriven - INT
),
(
-- Id - INT
'Kia', -- Manufacturer - NVARCHAR
'Picanto', -- Model - NVARCHAR
'DA-124-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
'Car', -- Category - NVARCHAR
'City', -- PricingType - NVARCHAR
10000 -- KilometersDriven - INT
),
(
-- Id - INT
'Kia', -- Manufacturer - NVARCHAR
'Stonic', -- Model - NVARCHAR
'DA-125-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
'Car', -- Category - NVARCHAR
'SUV', -- PricingType - NVARCHAR
25000 -- KilometersDriven - INT
),
(
-- Id - INT
'Kia', -- Manufacturer - NVARCHAR
'Ceed', -- Model - NVARCHAR
'DA-126-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
'Car', -- Category - NVARCHAR
'City', -- PricingType - NVARCHAR
100000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Kia', -- Manufacturer - NVARCHAR
N'Stinger', -- Model - NVARCHAR
N'DA-127-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'Limo', -- PricingType - NVARCHAR
40000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Škoda', -- Manufacturer - NVARCHAR
N'Octavia', -- Model - NVARCHAR
N'DA-128-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'Limo', -- PricingType - NVARCHAR
35000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Škoda', -- Manufacturer - NVARCHAR
N'Fabia', -- Model - NVARCHAR
N'DA-129-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'City', -- PricingType - NVARCHAR
10000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Škoda', -- Manufacturer - NVARCHAR
N'Superb', -- Model - NVARCHAR
N'DA-130-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'Limo', -- PricingType - NVARCHAR
25000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Škoda', -- Manufacturer - NVARCHAR
N'Karoq', -- Model - NVARCHAR
N'DA-131-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'SUV', -- PricingType - NVARCHAR
100000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Škoda', -- Manufacturer - NVARCHAR
N'Kodiaq', -- Model - NVARCHAR
N'DA-132-AA', -- RegistrationPlate - NVARCHAR
'2021-1-15', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'SUV', -- PricingType - NVARCHAR
100000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Renault', -- Manufacturer - NVARCHAR
N'Clio', -- Model - NVARCHAR
N'DA-133-AA', -- RegistrationPlate - NVARCHAR
'2020-12-25', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'City', -- PricingType - NVARCHAR
40000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Renault', -- Manufacturer - NVARCHAR
N'Captur', -- Model - NVARCHAR
N'DA-134-AA', -- RegistrationPlate - NVARCHAR
'2020-12-25', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'SUV', -- PricingType - NVARCHAR
35000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Renault', -- Manufacturer - NVARCHAR
N'Megane', -- Model - NVARCHAR
N'DA-135-AA', -- RegistrationPlate - NVARCHAR
'2020-12-25', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'Limo', -- PricingType - NVARCHAR
10000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Renault', -- Manufacturer - NVARCHAR
N'Kadjar', -- Model - NVARCHAR
N'DA-136-AA', -- RegistrationPlate - NVARCHAR
'2020-12-25', --RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'SUV', -- PricingType - NVARCHAR
25000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Renault', -- Manufacturer - NVARCHAR
N'Laguna', -- Model - NVARCHAR
N'DA-137-AA', -- RegistrationPlate - NVARCHAR
'2020-12-25', -- RegistrationExpirationDate - DATETIME2
N'Car', -- Category - NVARCHAR
N'Limo', -- PricingType - NVARCHAR
40000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Piaggio', -- Manufacturer - NVARCHAR
N'Liberty', -- Model - NVARCHAR
N'DA-138-AA', -- RegistrationPlate - NVARCHAR
'2021-9-20', -- RegistrationExpirationDate - DATETIME2
N'Motorcycle', -- Category - NVARCHAR
N'50cc', -- PricingType - NVARCHAR
35000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Piaggio', -- Manufacturer - NVARCHAR
N'NRG', -- Model - NVARCHAR
N'DA-139-AA', -- RegistrationPlate - NVARCHAR
'2021-9-20', -- RegistrationExpirationDate - DATETIME2
N'Motorcycle', -- Category - NVARCHAR
N'50cc', -- PricingType - NVARCHAR
10000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Piaggio', -- Manufacturer - NVARCHAR
N'Medley', -- Model - NVARCHAR
N'DA-140-AA', -- RegistrationPlate - NVARCHAR
'2021-9-20', -- RegistrationExpirationDate - DATETIME2
N'Motorcycle', -- Category - NVARCHAR
N'125cc', -- PricingType - NVARCHAR
25000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Vespa', -- Manufacturer - NVARCHAR
N'Primavera', -- Model - NVARCHAR
N'DA-141-AA', -- RegistrationPlate - NVARCHAR
'2021-9-20', -- RegistrationExpirationDate - DATETIME2
N'Motorcycle', -- Category - NVARCHAR
N'50cc', -- PricingType - NVARCHAR
40000 -- KilometersDriven - INT
),
(
-- Id - INT
N'Vespa', -- Manufacturer - NVARCHAR
N'GTS', -- Model - NVARCHAR
N'DA-142-AA', -- RegistrationPlate - NVARCHAR
'2021-9-20', -- RegistrationExpirationDate - DATETIME2
N'Motorcycle<', -- Category - NVARCHAR
N'300cc', -- PricingType - NVARCHAR
35000 -- KilometersDriven - INT
);
INSERT INTO dbo.Rents
(
--Id - column value is auto-generated
WorkerId, 
VehicleId, 
RentDate, 
RentAmount, 
Price, 
BuyerFirstName, 
BuyerLastName, 
BuyerDateOfBirth, 
BuyerDriversLicense, 
BuyerCreditCard
)
VALUES
(
-- Id - INT
1, -- WorkerId - INT
1, -- VehicleId - INT
'2020-09-20', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivana', -- BuyerFirstName - NVARCHAR
N'Ivanovska', -- BuyerLastName - NVARCHAR
'2000-1-1', -- BuyerDateOfBirth - DATETIME2
N'09899678432', -- BuyerDriversLicense - NVARCHAR
N'5322456787543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
1, -- WorkerId - INT
2, -- VehicleId - INT
'2020-09-25', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivana', -- BuyerFirstName - NVARCHAR
N'Ivanovska', -- BuyerLastName - NVARCHAR
'2000-1-1', -- BuyerDateOfBirth - DATETIME2
N'09899678432', -- BuyerDriversLicense - NVARCHAR
N'5322456787543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
1, -- WorkerId - INT
3, -- VehicleId - INT
'2020-09-30', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivana', -- BuyerFirstName - NVARCHAR
N'Ivanovska', -- BuyerLastName - NVARCHAR
'2000-1-1', -- BuyerDateOfBirth - DATETIME2
N'09899678432', -- BuyerDriversLicense - NVARCHAR
N'5322456787543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
1, -- WorkerId - INT
4, -- VehicleId - INT
'2020-10-5', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivana', -- BuyerFirstName - NVARCHAR
N'Ivanovska', -- BuyerLastName - NVARCHAR
'2000-1-1', -- BuyerDateOfBirth - DATETIME2
N'09899678432', -- BuyerDriversLicense - NVARCHAR
N'5322456787543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
1, -- WorkerId - INT
5, -- VehicleId - INT
'2020-10-10', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivana', -- BuyerFirstName - NVARCHAR
N'Ivanovska', -- BuyerLastName - NVARCHAR
'2000-1-1', -- BuyerDateOfBirth - DATETIME2
N'09899678432', -- BuyerDriversLicense - NVARCHAR
N'5322456787543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
2, -- WorkerId - INT
6, -- VehicleId - INT
'2020-09-20', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivan', -- BuyerFirstName - NVARCHAR
N'Ivanovski', -- BuyerLastName - NVARCHAR
'2000-5-1', -- BuyerDateOfBirth - DATETIME2
N'09800678432', -- BuyerDriversLicense - NVARCHAR
N'5322459854543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
2, -- WorkerId - INT
7, -- VehicleId - INT
'2020-09-25', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivan', -- BuyerFirstName - NVARCHAR
N'Ivanovski', -- BuyerLastName - NVARCHAR
'2000-5-1', -- BuyerDateOfBirth - DATETIME2
N'09800678432', -- BuyerDriversLicense - NVARCHAR
N'5322459854543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
2, -- WorkerId - INT
8, -- VehicleId - INT
'2020-09-30', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivan', -- BuyerFirstName - NVARCHAR
N'Ivanovski', -- BuyerLastName - NVARCHAR
'2000-5-1', -- BuyerDateOfBirth - DATETIME2
N'09800678432', -- BuyerDriversLicense - NVARCHAR
N'5322459854543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
2, -- WorkerId - INT
9, -- VehicleId - INT
'2020-10-5', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivan', -- BuyerFirstName - NVARCHAR
N'Ivanovski', -- BuyerLastName - NVARCHAR
'2000-5-1', -- BuyerDateOfBirth - DATETIME2
N'09800678432', -- BuyerDriversLicense - NVARCHAR
N'5322459854543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
2, -- WorkerId - INT
10, -- VehicleId - INT
'2020-10-10', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Ivan', -- BuyerFirstName - NVARCHAR
N'Ivanovski', -- BuyerLastName - NVARCHAR
'2000-5-1', -- BuyerDateOfBirth - DATETIME2
N'09800678432', -- BuyerDriversLicense - NVARCHAR
N'5322459854543578' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
3, -- WorkerId - INT
16, -- VehicleId - INT
'2020-09-20', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Martin', -- BuyerFirstName - NVARCHAR
N'Martinovski', -- BuyerLastName - NVARCHAR
'2000-10-1', -- BuyerDateOfBirth - DATETIME2
N'09800678002', -- BuyerDriversLicense - NVARCHAR
N'5322459854543228' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
3, -- WorkerId - INT
17, -- VehicleId - INT
'2020-09-25', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Martin', -- BuyerFirstName - NVARCHAR
N'Martinovski', -- BuyerLastName - NVARCHAR
'2000-10-1', -- BuyerDateOfBirth - DATETIME2
N'09800678002', -- BuyerDriversLicense - NVARCHAR
N'5322459854543228' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
3, -- WorkerId - INT
18, -- VehicleId - INT
'2020-09-30', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Martin', -- BuyerFirstName - NVARCHAR
N'Martinovski', -- BuyerLastName - NVARCHAR
'2000-10-1', -- BuyerDateOfBirth - DATETIME2
N'09800678002', -- BuyerDriversLicense - NVARCHAR
N'5322459854543228' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
3, -- WorkerId - INT
19, -- VehicleId - INT
'2020-10-5', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Martin', -- BuyerFirstName - NVARCHAR
N'Martinovski', -- BuyerLastName - NVARCHAR
'2000-10-1', -- BuyerDateOfBirth - DATETIME2
N'09800678002', -- BuyerDriversLicense - NVARCHAR
N'5322459854543228' -- BuyerCreditCard - NVARCHAR
),
(
-- Id - INT
3, -- WorkerId - INT
20, -- VehicleId - INT
'2020-10-10', -- RentDate - DATETIME2
3, -- RentAmount - INT
0, -- Price - INT
N'Martin', -- BuyerFirstName - NVARCHAR
N'Martinovski', -- BuyerLastName - NVARCHAR
'2000-10-1', -- BuyerDateOfBirth - DATETIME2
N'09800678002', -- BuyerDriversLicense - NVARCHAR
N'5322459854543228' -- BuyerCreditCard - NVARCHAR
);
UPDATE dbo.Rents
  SET 
      RentTimeStamp = GETDATE();
--1
SELECT *
FROM dbo.Vehicles v
WHERE v.RegistrationExpirationDate < GETDATE();
--2
SELECT *
FROM dbo.Vehicles v
WHERE DATEDIFF(DAY, GETDATE(), v.RegistrationExpirationDate) < 31
      AND DATEDIFF(DAY, GETDATE(), v.RegistrationExpirationDate) > 0;
--3
SELECT COUNT(DISTINCT PricingType)
FROM dbo.Vehicles v;
--4
SELECT TOP 5 *
FROM dbo.Rents r
WHERE r.WorkerId = 21;
--5
SELECT CASE PricingType
           WHEN 'City'
           THEN 500
           WHEN 'Limo'
           THEN 1000
           WHEN 'SUV'
           THEN 1500
           WHEN '50cc'
           THEN 300
           WHEN '125cc'
           THEN 400
           WHEN '300cc'
           THEN 500
           ELSE 100
       END AS TypePrice,
       CASE
           WHEN MONTH(r.RentDate) <= 9
                AND MONTH(r.RentDate) >= 3
                AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) <= 9
                AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) >= 3
           THEN 1.5
           WHEN(MONTH(r.RentDate) > 9
                OR MONTH(r.RentDate) < 3)
               AND (MONTH(DATEADD(day, r.RentAmount, r.RentDate)) > 9
                    OR MONTH(DATEADD(day, r.RentAmount, r.RentDate)) < 3)
           THEN 1
           WHEN(MONTH(r.RentDate) > 9
                AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) <= 9)
               OR (MONTH(r.RentDate) < 3
                   AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) >= 3)
           THEN SUM((1.5 * DATEDIFF(day, r.RentDate, '2020-10-1') + DATEDIFF(day, '2020-10-1', DATEADD(day, r.RentAmount, r.RentDate)))/cast(r.RentAmount AS float))		   
           WHEN(MONTH(r.RentDate) <= 9
                AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) > 9)
               OR (MONTH(r.RentDate) >= 3
                   AND MONTH(DATEADD(day, r.RentAmount, r.RentDate)) < 3)
           THEN  sum(1.5* datediff(day,r.RentDate,'2020-10-1')+datediff(day,'2020-10-1',DATEADD(day, r.RentAmount, r.RentDate))-(datediff(day,r.RentDate,'2020-20-1')>214)*(datediff(day,r.RentDate,'2020-20-1')-214)*0.5+(datediff(day, '2020-10-1',DATEADD(day, r.RentAmount, r.RentDate))>151)*(datediff(day, '2020-10-1',DATEADD(day, r.RentAmount, r.RentDate))-151)*0.5)
       END AS TimeOfYearPrice, 
       v.Id
--trenutno ne radi ovaj zadatak, pokuša san ga popravit al nije išlo
FROM dbo.Rents r
     JOIN dbo.Vehicles v ON r.VehicleId = v.Id
GROUP BY v.PricingType, 
         r.RentDate, 
         r.RentAmount, 
         v.Id;
--6
SELECT DISTINCT 
       r.BuyerFirstName, 
       r.BuyerLastName
FROM dbo.Rents r;
--7
SELECT r.RentTimeStamp, 
       w.FirstName, 
       w.LastName
FROM dbo.Rents r
     JOIN dbo.Workers w ON r.WorkerId = w.Id
ORDER BY r.RentTimeStamp;
--8
SELECT v.Manufacturer, 
       COUNT(v.Manufacturer)
FROM dbo.Vehicles v
GROUP BY v.Manufacturer;
--9
SELECT *
INTO RentsArchive
FROM dbo.Rents r
WHERE DATEADD(day, r.RentAmount, r.RentDate) < GETDATE(); 
--10
SELECT MONTH(r.RentDate) AS Month, 
       COUNT(r.Id) AS NumberOfRents
FROM dbo.Rents r
WHERE YEAR(r.RentDate) = 2020
GROUP BY MONTH(r.RentDate);
--11
SELECT *,
       CASE
           WHEN v.RegistrationExpirationDate <= GETDATE()
           THEN 'Needs a new registration'
           WHEN v.RegistrationExpirationDate > GETDATE()
           THEN 'Doesnt need a new registration'
       END AS RegistrationInfo
FROM dbo.Vehicles v
WHERE v.PricingType = 'City';
--12
SELECT v.PricingType, 
       COUNT(r.Id) AS NumberOfRents
FROM dbo.Vehicles v
     JOIN dbo.Rents r ON v.Id = r.VehicleId
WHERE r.RentAmount >
(
    SELECT AVG(CAST(r.RentAmount AS FLOAT))
    FROM dbo.Rents r
)
GROUP BY v.PricingType;