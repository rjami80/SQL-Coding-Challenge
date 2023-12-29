-- Coding Challenge - PetPals, The Pet Adoption Platform
--Name: Jami Ram Sai Rohan

-- 4. Ensure the script handles potential errors, such as if the database or tables already exist.
-- 1. Provide a SQL script that initializes the database for the Pet Adoption Platform ”PetPals”.
IF DB_ID('Petpals') IS NOT NULL
BEGIN
    Drop DATABASE Petpals;
END
Go;

CREATE DATABASE PetPals;

USE PetPals;

-- 2. Create tables for pets, shelters, donations, adoption events, and participants.
-- 3. Define appropriate primary keys, foreign keys, and constraints.
CREATE TABLE  Pets (
    PetID INT PRIMARY KEY,
    Name VARCHAR(99),
    Age INT,
    Breed VARCHAR(99),
    Type VARCHAR(99),
    AvailableForAdoption BIT
);

CREATE TABLE Shelters (
    ShelterID INT PRIMARY KEY,
    Name VARCHAR(99),
    Location VARCHAR(99)
);

CREATE TABLE Donations (
    DonationID INT PRIMARY KEY,
    DonorName VARCHAR(99),
    DonationType VARCHAR(99),
    DonationAmount DECIMAL,
    DonationItem VARCHAR(99),
    DonationDate DATETIME
);

CREATE TABLE AdoptionEvents (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(99),
    EventDate DATETIME,
    Location VARCHAR(99)
);

CREATE TABLE Participants (
    ParticipantID INT PRIMARY KEY,
    ParticipantName VARCHAR(99),
    ParticipantType VARCHAR(99),
    EventID INT,
    FOREIGN KEY (EventID) REFERENCES AdoptionEvents(EventID)
);

-- Insert 10 entries into Pets table
INSERT INTO Pets (PetID, Name, Age, Breed, Type, AvailableForAdoption)
VALUES
    (1, 'Max', 2, 'Labrador', 'Dog', 1),
    (2, 'Pluto', 1, 'Persian', 'Cat', 0),
    (3, 'Charlie', 3, 'German Shepherd', 'Dog', 0),
    (4, 'Oscar', 1, 'Golden Retreiver', 'Dog', 1),
    (5, 'Tucker', 2, 'Siamese', 'Cat', 1),
    (6, 'Tod', 4, 'Beagle', 'Dog', 1),
    (7, 'Hammy', 1, 'Corgi', 'Dog', 0),
    (8, 'Olivia', 2, 'Ragdoll', 'Cat', 0),
    (9, 'Chester', 1, 'Golden Retriever', 'Dog', 1),
    (10, 'Emma', 3, 'Maine Coon', 'Cat', 0);

-- Insert 10 entries into Shelters table
INSERT INTO Shelters (ShelterID, Name, Location)
VALUES
    (1, 'People For Animals', 'New Delhi'),
    (2, 'DoDo', 'Goa'),
    (3, 'Charlies Animal Rescue Centre', 'Bangalore'),
    (4, 'Rainbow Shelter', 'Ahmedabad'),
    (5, 'Friendicoes', 'Visakhapatnam'),
    (6, 'Furry Friends Shelter', 'Hyderabad'),
    (7, 'Posh Foundation', 'UttarPradesh'),
    (8, 'Mathews Rescue Force', 'Kolkata'),
    (9, 'Caring Souls Shelter', 'Jaipur, '),
    (10, 'Resonance Shelter', 'Kochi');

-- Insert 10 entries into Donations table
INSERT INTO Donations (DonationID, DonorName, DonationType, DonationAmount, DonationItem, DonationDate)
VALUES
    (1, 'Bhaskar', 'Cash', 250.00, NULL, '2023-01-20 09:28:00'),
    (2, 'Uday', 'Item', NULL, 'Pet Food', '2023-12-04 17:25:00'),
    (3, 'Kiran', 'Cash', 380.00, NULL, '2023-08-31 06:18:00'),
    (4, 'Sri Harsha', 'Item', NULL, 'Pet Toys', '2023-04-24 15:06:00'),
    (5, 'Ramana', 'Cash', 200.00, NULL, '2023-11-27 18:22:00'),
    (6, 'Vidya Sagar', 'Item', NULL, 'Pet Bed', '2023-05-22 23:21:00'),
    (7, 'Aditya', 'Cash', 100.00, NULL, '2023-12-29 07:55:00'),
    (8, 'Sathwik', 'Item', NULL, 'Cat Litter', '2023-08-20 11:14:00'),
    (9, 'Jaswanth', 'Cash', 150.00, NULL, '2023-06-18 18:33:00'),
    (10, 'Uma', 'Item', NULL, 'Dog Leash', '2023-07-11 15:54:00');

-- Insert 10 entries into AdoptionEvents table
INSERT INTO AdoptionEvents (EventID, EventName, EventDate, Location)
VALUES
    (1, 'PetPal Adoption Day', '2023-01-25 11:00:00', 'DoDo, Goa'),
    (2, 'Animal Carnival', '2023-03-15 14:30:00', 'Hyderabad Pet Park'),
    (3, 'Charity for Pets', '2023-05-05 12:00:00', 'Rainbow Shelter, Ahmedabad'),
    (4, 'Paw Paw Festival', '2023-07-10 10:00:00', 'Whisker Haven, Bangalore'),
    (5, 'Feuds', '2023-09-02 15:00:00', 'Resonance Shelter, Kochi'),
    (6, 'Love for Paws', '2023-10-18 13:45:00', 'Caring Souls Shelter, Jaipur,'),
    (7, 'Excellence Petpal', '2023-12-01 09:30:00', 'Posh Foundation, UttarPradesh'),
    (8, 'Love Care Pets', '2024-02-08 11:20:00', 'Hearts Shelter, Delhi'),
    (9, 'Soul for the Soul', '2024-04-03 16:00:00', 'Furry Friends Shelter, Hyderabad'),
    (10, 'Barked Pet Show', '2024-06-22 10:45:00', 'Rainbow Shelter, Chennai');

-- Insert 10 entries into Participants table
INSERT INTO Participants (ParticipantID, ParticipantName, ParticipantType, EventID)
VALUES
    (1, 'Saqib Rangrez', 'Shelter', 1),
    (2, 'Virat Kohli', 'Adopter', 1),
    (3, 'Rahul', 'Adopter', 2),
    (4, 'Akshar', 'Shelter', 2),
    (5, 'Thakur', 'Adopter', 6),
    (6, 'Vince', 'Shelter', 3),
    (7, 'Ronit', 'Shelter', 4),
    (8, 'Preethi', 'Adopter', 4),
    (9, 'Akanksha', 'Shelter', 8),
    (10, 'Mahesh', 'Adopter', 5);

SELECT * FROM Pets;
SELECT * FROM Shelters;
SELECT * FROM Donations;
SELECT * FROM AdoptionEvents;
SELECT * FROM Participants;

--5. Write an SQL query that retrieves a list of available pets (those marked as available for adoption)
--   from the "Pets" table. Include the pet's name, age, breed, and type in the result set. Ensure that
--   the query filters out pets that are not available for adoption.

SELECT Name, Age, Breed, Type
FROM Pets
WHERE AvailableForAdoption = 1;

--6. Write an SQL query that retrieves the names of participants (shelters and adopters) registered 
--for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query 
--joins the necessary tables to retrieve the participant names and types.

DECLARE @EventID INT = 6;
SELECT P.ParticipantName, P.ParticipantType
FROM Participants P
JOIN AdoptionEvents A ON P.EventID = A.EventID
WHERE A.EventID = @EventID;

--7. Create a stored procedure in SQL that allows a shelter to update its information (name and 
--   location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information. 
--   Ensure that the procedure performs the update and handles potential errors, such as an invalid shelter ID

CREATE PROCEDURE UpdateShelterInformations
@ShelterID INT,
@NewName VARCHAR(99),
@NewLocation VARCHAR(99)
AS
BEGIN
	UPDATE Shelters
    SET Name = @NewName, Location = @NewLocation
    WHERE ShelterID = @ShelterID;
END;
SELECT * FROM Shelters;
EXEC UpdateShelterInformations @ShelterID = 8, @NewName = 'Danish Rescue', @NewLocation = 'Ranchi,Jharkand';

SELECT * FROM Shelters;

--8. Write an SQL query that calculates and retrieves the total donation amount for each shelter (by 
--   shelter name) from the "Donations" table. The result should include the shelter name and the 
--   total donation amount. Ensure that the query handles cases where a shelter has received no donations.

SELECT S.Name, COALESCE(SUM(D. DonationAmount),0) AS [Total Donation Amount] 
FROM Donations D
RIGHT JOIN Shelters S ON D.DonationID = S.ShelterID
GROUP BY S.Name;

--9. Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an 
--   owner (i.e., where "OwnerID" is null). Include the pet's name, age, breed, and type in the result set.

ALTER TABLE Pets
ADD OwnerID INT NULL; 

UPDATE Pets SET OwnerID =1 WHERE PetID=1;
UPDATE Pets SET OwnerID =NULL WHERE PetID=2;
UPDATE Pets SET OwnerID =2 WHERE PetID=3;
UPDATE Pets SET OwnerID =NULL WHERE PetID=4;
UPDATE Pets SET OwnerID =3 WHERE PetID=5;
UPDATE Pets SET OwnerID =4 WHERE PetID=6;
UPDATE Pets SET OwnerID =NULL WHERE PetID=7;
UPDATE Pets SET OwnerID =6 WHERE PetID=8;
UPDATE Pets SET OwnerID =7 WHERE PetID=9;
UPDATE Pets SET OwnerID =NULl WHERE PetID=10;
SELECT * FROM Pets;

SELECT Name, Age, Breed, Type FROM Pets 
WHERE OwnerID IS NULL;

--10. Write an SQL query that retrieves the total donation amount for each month and year

SELECT FORMAT(DonationDate, 'MMMM yyyy') AS [Month and Year],
    COALESCE(SUM(DonationAmount), 0) 
	AS TotalDonationAmount
FROM Donations
GROUP BY FORMAT(DonationDate, 'MMMM yyyy');

--11. Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or 
--older than 5 years.

SELECT DISTINCT Breed,Age
FROM Pets
WHERE (Age BETWEEN 1 AND 3) OR (Age > 5);

--12. Retrieve a list of pets and their respective shelters where the pets are currently available for 
--adoption.

SELECT P.Name AS [Pet Name], S. Name AS [Shelter Name]
FROM Pets P
JOIN Shelters S ON P. PetID = S. ShelterID
WHERE AvailableForAdoption = 1;

--13. Find the total number of participants in events organized by shelters located in specific city

SELECT COUNT(DISTINCT P.ParticipantID) AS [Total Participants]
FROM Shelters S
JOIN AdoptionEvents E ON S.Location = E.Location
JOIN Participants P ON E.EventID = P.EventID
WHERE S.Location = 'Mumbai';

--14. Retrieve a list of unique breeds for pets with ages between 1 and 5 years

SELECT DISTINCT Breed,Age
FROM Pets
WHERE Age BETWEEN 1 AND 5;

--15. Find the pets that have not been adopted by selecting their information from the 'Pet' table

SELECT PetID, Name, Age, Breed, Type  FROM Pets 
WHERE AvailableForAdoption = 1;

--16.Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and User' tables.

-- Create User table

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(99)
);

-- Create Adoption table

CREATE TABLE Adoptions (
    AdoptionID INT PRIMARY KEY,
    PetID INT,
    AdopterID INT,
    AdoptionDate DATETIME,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (AdopterID) REFERENCES Users(UserID)
);

--Inserting 4 Entries into Users Table.

INSERT INTO Users (UserID, UserName) VALUES
(1, 'Ravi'),
(2, 'Kishan'),
(3, 'Williams'),
(4, 'Jansen');

--Inserting 4 Entries into Adoptions Table.

INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate) VALUES
(1, 1, 1, '2023-04-20'),
(2, 2, 2, '2023-12-04'),
(3, 3, 3, '2023-05-24'),
(4, 4, 4, '2023-11-27');

-- Retrieve names of adopted pets and adopters

SELECT P.Name AS [Name of Pets], U.UserName AS [Adopters Name]
FROM Pets AS P 
Join Adoptions AS A ON P.PetID = A.PetID 
Join Users U ON A.AdopterID = U.UserID;

--17. Retrieve a list of all shelters along with the count of pets currently available for adoption in each 
--shelter.

SELECT S.ShelterID, S.Name AS [Shelter Name], COUNT(P.PetID) as [Pets Available from Shelter]
from Shelters S
LEFT JOIN Pets P ON S.ShelterID = P.PetID
WHERE P.AvailableForAdoption = 1
GROUP BY S.ShelterID, S.Name;

-- 18.Find pairs of pets from the same shelter that have the same breed.

ALTER TABLE Pets ADD ShelterID INT FOREIGN KEY REFERENCES Shelters(ShelterID);

UPDATE Pets SET ShelterID = 1 WHERE PetID = 1;
UPDATE Pets SET ShelterID = 2 WHERE PetID = 2;
UPDATE Pets SET ShelterID = 2 WHERE PetID = 3;
UPDATE Pets SET ShelterID = 4 WHERE PetID = 4;
UPDATE Pets SET ShelterID = 5 WHERE PetID = 5;
UPDATE Pets SET ShelterID = 6 WHERE PetID = 6;
UPDATE Pets SET ShelterID = 7 WHERE PetID = 7;
UPDATE Pets SET ShelterID = 8 WHERE PetID = 8;
UPDATE Pets SET ShelterID = 10 WHERE PetID = 9;
UPDATE Pets SET ShelterID = 10 WHERE PetID = 10;

UPDATE Pets
SET Breed = 'PUG'
WHERE ShelterID = 2;

SELECT P1.PetID, P1.Name, P1.Breed, P1.ShelterID FROM Shelters S 
JOIN Pets P1 ON S.ShelterID = P1.ShelterID 
JOIN Pets P2 ON P1.Breed = P2.Breed AND P1.PetID <> P2.PetID;

--19. List all possible combinations of shelters and adoption events

SELECT
    S.*,
    AE.*
FROM
    Shelters S
CROSS JOIN
    AdoptionEvents AE;

--20.Determine the shelter that has the highest number of adopted pets

SELECT TOP 1 ShelterID, COUNT(PetID) AS [Number of Pets Adopted] FROM Pets
GROUP BY ShelterID ORDER BY [Number of Pets Adopted] DESC;


