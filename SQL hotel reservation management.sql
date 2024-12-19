--Hotel Reservation System

CREATE DATABASE HOTEL_MANAGEMENT;
USE HOTEL_MANAGEMENT;

CREATE TABLE GUESTS
(
	GUEST_ID INT IDENTITY(1,1) PRIMARY KEY,
	FIRST_NAME VARCHAR(100),
	LAST_NAME VARCHAR(100) DEFAULT NULL,
	PHONE_NUMBER VARCHAR(20),
	EMAIL VARCHAR(250)
)
CREATE TABLE ROOMS
(
	ROOM_ID INT IDENTITY(1,1) PRIMARY KEY,
	ROOM_TYPE VARCHAR(250),
	PRICE DECIMAL(10,2),
	AVAILABLE BIT DEFAULT 1,
	CHECKIN_DATE DATETIME DEFAULT GETDATE(),
	CHECKOUT_DATE DATETIME DEFAULT GETDATE(),
)

CREATE TABLE RESERVATIONS
(
	RESERVATION_ID INT IDENTITY(1,1) PRIMARY KEY,
	GUEST_ID INT,
	ROOM_ID INT,
	START_DATE DATETIME DEFAULT GETDATE(),
	END_DATE DATETIME DEFAULT GETDATE(),
	STATUS VARCHAR(100),
	FOREIGN KEY (GUEST_ID) REFERENCES GUESTS(GUEST_ID),
	FOREIGN KEY (ROOM_ID) REFERENCES ROOMS(ROOM_ID)
)

CREATE TABLE PAYMENTS
(
	PAYMENT_ID INT IDENTITY(1,1) PRIMARY KEY,
	RESERVATION_ID INT,
	AMOUNT DECIMAL(10,2),
	PAYMENT_DATE DATETIME DEFAULT GETDATE(),
	PAYMENT_STATUS VARCHAR(100),
)

INSERT INTO GUESTS (FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL)
VALUES 
('John', 'Doe', '1234567890', 'john.doe@example.com'),
('Jane', 'Smith', '9876543210', 'jane.smith@example.com'),
('Robert', 'Brown', '5678901234', 'robert.brown@example.com'),
('Emily', 'Davis', '4561237890', 'emily.davis@example.com'),
('Michael', 'Wilson', '7890123456', 'michael.wilson@example.com'),
('Sarah', 'Miller', '2345678901', 'sarah.miller@example.com'),
('David', 'Moore', '3456789012', 'david.moore@example.com'),
('Sophia', 'Taylor', '8901234567', 'sophia.taylor@example.com'),
('Daniel', 'Anderson', '9012345678', 'daniel.anderson@example.com'),
('Emma', 'Thomas', '5678902345', 'emma.thomas@example.com'),
('Chris', 'Johnson', '7812345678', 'chris.johnson@example.com'),
('Olivia', 'Jackson', '9812345678', 'olivia.jackson@example.com'),
('Liam', 'Martin', '4512345678', 'liam.martin@example.com'),
('Noah', 'White', '8612345678', 'noah.white@example.com'),
('Ava', 'Harris', '3712345678', 'ava.harris@example.com'),
('Isabella', 'Clark', '6412345678', 'isabella.clark@example.com'),
('Elijah', 'Lewis', '2312345678', 'elijah.lewis@example.com'),
('Mia', 'Walker', '5612345678', 'mia.walker@example.com'),
('Amelia', 'Hall', '7612345678', 'amelia.hall@example.com'),
('Lucas', 'Allen', '1212345678', 'lucas.allen@example.com'),
('Ethan', 'Young', '5412345678', 'ethan.young@example.com'),
('Charlotte', 'King', '8412345678', 'charlotte.king@example.com'),
('James', 'Wright', '3312345678', 'james.wright@example.com'),
('Benjamin', 'Scott', '4812345678', 'benjamin.scott@example.com'),
('Harper', 'Green', '6612345678', 'harper.green@example.com'),
('Henry', 'Adams', '1112345678', 'henry.adams@example.com'),
('Lily', 'Baker', '4112345678', 'lily.baker@example.com'),
('Alexander', 'Gonzalez', '7212345678', 'alexander.gonzalez@example.com'),
('Ella', 'Nelson', '5112345678', 'ella.nelson@example.com'),
('Madison', 'Carter', '8712345678', 'madison.carter@example.com'),
('Aiden', 'Mitchell', '1312345678', 'aiden.mitchell@example.com'),
('Scarlett', 'Perez', '4412345678', 'scarlett.perez@example.com'),
('Layla', 'Roberts', '7712345678', 'layla.roberts@example.com'),
('Jack', 'Turner', '1512345678', 'jack.turner@example.com'),
('Luna', 'Phillips', '4312345678', 'luna.phillips@example.com'),
('Sofia', 'Campbell', '7312345678', 'sofia.campbell@example.com'),
('Zoe', 'Parker', '6712345678', 'zoe.parker@example.com'),
('Oliver', 'Evans', '8812345678', 'oliver.evans@example.com'),
('Mason', 'Edwards', '5212345678', 'mason.edwards@example.com'),
('Ella', 'Collins', '7812345678', 'ella.collins@example.com'),
('Aria', 'Stewart', '1212345679', 'aria.stewart@example.com'),
('Evelyn', 'Morris', '6112345678', 'evelyn.morris@example.com'),
('Sofia', 'Rogers', '3412345678', 'sofia.rogers@example.com'),
('Chloe', 'Reed', '2312345679', 'chloe.reed@example.com'),
('Isaac', 'Cook', '6512345678', 'isaac.cook@example.com'),
('Levi', 'Bell', '8312345678', 'levi.bell@example.com'),
('Victoria', 'Murphy', '3412345680', 'victoria.murphy@example.com'),
('William', 'Rivera', '9212345678', 'william.rivera@example.com'),
('Ella', 'Cooper', '3412345679', 'ella.cooper@example.com'),
('Grace', 'Richardson', '3312345678', 'grace.richardson@example.com');


INSERT INTO ROOMS (ROOM_TYPE, PRICE, AVAILABLE)
VALUES 
('Single', 50.00, 1),
('Double', 75.00, 1),
('Suite', 120.00, 1),
('Deluxe', 150.00, 1),
('Penthouse', 300.00, 1),
('Single', 55.00, 1),
('Double', 80.00, 1),
('Suite', 130.00, 1),
('Deluxe', 170.00, 0),
('Penthouse', 350.00, 0),
('Single', 60.00, 1),
('Double', 85.00, 1),
('Suite', 125.00, 0),
('Deluxe', 180.00, 1),
('Single', 70.00, 1),
('Double', 90.00, 0),
('Suite', 140.00, 1),
('Deluxe', 200.00, 0),
('Single', 75.00, 1),
('Double', 95.00, 1),
('Suite', 150.00, 1),
('Deluxe', 210.00, 0),
('Single', 80.00, 1),
('Double', 100.00, 1),
('Suite', 160.00, 0),
('Deluxe', 220.00, 1),
('Single', 85.00, 1),
('Double', 105.00, 0),
('Suite', 170.00, 1),
('Deluxe', 230.00, 1),
('Penthouse', 500.00, 0),
('Single', 90.00, 1),
('Double', 110.00, 1),
('Suite', 180.00, 0),
('Deluxe', 240.00, 1),
('Single', 95.00, 1),
('Double', 115.00, 1),
('Suite', 190.00, 0),
('Deluxe', 250.00, 1),
('Single', 100.00, 1),
('Double', 120.00, 1),
('Suite', 200.00, 0),
('Deluxe', 260.00, 1),
('Penthouse', 550.00, 1),
('Single', 105.00, 1),
('Double', 125.00, 0),
('Suite', 210.00, 1),
('Deluxe', 270.00, 1),
('Single', 110.00, 1),
('Double', 130.00, 1),
('Suite', 220.00, 0);


INSERT INTO RESERVATIONS (GUEST_ID, ROOM_ID, START_DATE, END_DATE, STATUS)
VALUES
(1, 2, '2024-01-01', '2024-01-05', 'Confirmed'),
(2, 3, '2024-01-03', '2024-01-06', 'Checked-In'),
(3, 1, '2024-01-02', '2024-01-07', 'Confirmed'),
(4, 5, '2024-01-04', '2024-01-09', 'Cancelled'),
(5, 7, '2024-01-10', '2024-01-15', 'Confirmed'),
(6, 8, '2024-01-11', '2024-01-14', 'Checked-Out'),
(7, 9, '2024-01-12', '2024-01-18', 'Confirmed'),
(8, 10, '2024-01-15', '2024-01-20', 'Cancelled'),
(9, 6, '2024-01-16', '2024-01-19', 'Confirmed'),
(10, 4, '2024-01-17', '2024-01-23', 'Checked-In'),
(11, 3, '2024-01-20', '2024-01-24', 'Confirmed'),
(12, 2, '2024-01-21', '2024-01-26', 'Cancelled'),
(13, 1, '2024-01-22', '2024-01-25', 'Checked-Out'),
(14, 7, '2024-01-23', '2024-01-28', 'Confirmed'),
(15, 5, '2024-01-25', '2024-01-30', 'Checked-In'),
(16, 8, '2024-01-26', '2024-02-01', 'Confirmed'),
(17, 9, '2024-01-27', '2024-02-03', 'Checked-Out'),
(18, 10, '2024-01-28', '2024-02-02', 'Confirmed'),
(19, 6, '2024-01-30', '2024-02-05', 'Cancelled'),
(20, 4, '2024-02-01', '2024-02-06', 'Checked-In'),
(21, 3, '2024-02-03', '2024-02-09', 'Confirmed'),
(22, 2, '2024-02-04', '2024-02-08', 'Checked-Out'),
(23, 1, '2024-02-05', '2024-02-10', 'Confirmed'),
(24, 7, '2024-02-06', '2024-02-12', 'Cancelled'),
(25, 5, '2024-02-08', '2024-02-13', 'Checked-In'),
(26, 8, '2024-02-09', '2024-02-14', 'Confirmed'),
(27, 9, '2024-02-11', '2024-02-17', 'Checked-Out'),
(28, 10, '2024-02-12', '2024-02-16', 'Confirmed'),
(29, 6, '2024-02-13', '2024-02-18', 'Cancelled'),
(30, 4, '2024-02-15', '2024-02-20', 'Checked-In'),
(31, 3, '2024-02-16', '2024-02-21', 'Confirmed'),
(32, 2, '2024-02-17', '2024-02-22', 'Checked-Out'),
(33, 1, '2024-02-18', '2024-02-23', 'Confirmed'),
(34, 7, '2024-02-20', '2024-02-25', 'Cancelled'),
(35, 5, '2024-02-21', '2024-02-27', 'Checked-In'),
(36, 8, '2024-02-23', '2024-02-28', 'Confirmed'),
(37, 9, '2024-02-24', '2024-03-01', 'Checked-Out'),
(38, 10, '2024-02-25', '2024-03-03', 'Confirmed'),
(39, 6, '2024-02-26', '2024-03-05', 'Cancelled'),
(40, 4, '2024-03-01', '2024-03-06', 'Checked-In'),
(41, 3, '2024-03-02', '2024-03-07', 'Confirmed'),
(42, 2, '2024-03-03', '2024-03-09', 'Checked-Out'),
(43, 1, '2024-03-04', '2024-03-10', 'Confirmed'),
(44, 7, '2024-03-05', '2024-03-12', 'Cancelled'),
(45, 5, '2024-03-06', '2024-03-13', 'Checked-In'),
(46, 8, '2024-03-07', '2024-03-14', 'Confirmed'),
(47, 9, '2024-03-08', '2024-03-15', 'Checked-Out'),
(48, 10, '2024-03-09', '2024-03-16', 'Confirmed'),
(49, 6, '2024-03-10', '2024-03-18', 'Cancelled'),
(50, 4, '2024-03-11', '2024-03-19', 'Checked-In');

--Insert a new guest into the GUESTS table
INSERT INTO GUESTS VALUES('JIJI SHARLY','J','9874678736','jayarajsharly@example.com')

--Update the email of a guest with GUEST_ID = 5
UPDATE GUESTS SET EMAIL = 'michael@example.com' WHERE GUEST_ID = 5

--Delete a room from the ROOMS table where ROOM_ID = 11
DELETE FROM ROOMS WHERE ROOM_ID = 11

--Select all columns from the GUESTS table
SELECT * FROM GUESTS

--Select all guests whose last name starts with "D"
SELECT * FROM GUESTS WHERE LAST_NAME LIKE 'D%'

--Retrieve all rooms with a price greater than $100.00
SELECT * FROM ROOMS WHERE PRICE > 100

--Fetch all reservations with a status of Confirmed
SELECT * FROM RESERVATIONS WHERE STATUS = 'Confirmed'

--Display the FIRST_NAME and EMAIL of all guests who made a reservation
SELECT DISTINCT FIRST_NAME,EMAIL FROM GUESTS G LEFT JOIN RESERVATIONS R ON G.GUEST_ID = R.GUEST_ID WHERE R.RESERVATION_ID IS NULL

--List the details of all rooms that are currently available
SELECT * FROM ROOMS WHERE AVAILABLE = 1

--Retrieve all reservations starting after 2024-01-15
SELECT * FROM RESERVATIONS WHERE START_DATE > '2024-01-15'

--Get the reservation details for a specific guest (GUEST_ID = 4)
SELECT * FROM RESERVATIONS WHERE GUEST_ID = 4

--Find all guests who do not have a last name specified (LAST_NAME IS NULL)
SELECT * FROM GUESTS WHERE LAST_NAME IS NULL

--List all reservations with END_DATE earlier than today
SELECT * FROM RESERVATIONS WHERE END_DATE < GETDATE()

--Get the FIRST_NAME and ROOM_TYPE for all active reservations
SELECT G.FIRST_NAME,RM.ROOM_TYPE FROM RESERVATIONS R 
LEFT JOIN GUESTS G ON R.GUEST_ID = G.GUEST_ID 
LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID
WHERE STATUS = 'Checked-In'

--Retrieve the GUEST_ID, ROOM_ID, and STATUS for all reservations with guests whose last name is "Smith"
SELECT R.GUEST_ID,G.LAST_NAME,R.ROOM_ID,R.STATUS FROM RESERVATIONS R 
LEFT JOIN GUESTS G ON R.GUEST_ID = G.GUEST_ID
WHERE G.LAST_NAME = 'SMITH'

--Find the EMAIL of all guests who reserved a suite
SELECT G.EMAIL FROM RESERVATIONS R LEFT JOIN GUESTS G ON R.GUEST_ID = G.GUEST_ID 
LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID WHERE RM.ROOM_TYPE = 'SUITE'

--Get a list of all reservations along with their corresponding room prices
SELECT R.*,RM.PRICE FROM RESERVATIONS R LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID

--Retrieve the ROOM_TYPE and FIRST_NAME for guests who booked rooms with a price above $150
SELECT RM.ROOM_TYPE,G.FIRST_NAME FROM RESERVATIONS R LEFT JOIN ROOMS RM ON R.ROOM_ID = R.ROOM_ID LEFT JOIN GUESTS G ON R.GUEST_ID = G.GUEST_ID
WHERE RM.PRICE > 150

--Fetch details of guests who made reservations in unavailable rooms
SELECT G.* FROM RESERVATIONS R LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID
LEFT JOIN GUESTS G ON R.GUEST_ID = G.GUEST_ID WHERE RM.AVAILABLE=0

--List all reservations along with the associated room types and guest emails
SELECT R.*,RM.ROOM_TYPE,G.EMAIL FROM RESERVATIONS R LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID LEFT JOIN GUESTS G ON R.GUEST_ID=G.GUEST_ID

--Get the total number of reservations for each room type
SELECT RM.ROOM_TYPE,COUNT(R.RESERVATION_ID) NUMBER_OF_RESERVATION FROM RESERVATIONS R 
LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID GROUP BY RM.ROOM_TYPE

--Find all rooms that have never been reserved
SELECT * FROM ROOMS R WHERE NOT EXISTS (SELECT 1 FROM RESERVATIONS RES WHERE RES.ROOM_ID = R.ROOM_ID);
--or
SELECT * FROM ROOMS WHERE ROOM_ID NOT IN (SELECT DISTINCT ROOM_ID FROM RESERVATIONS)

--Fetch the reservation history of a specific guest (GUEST_ID = 2)
SELECT * FROM RESERVATIONS WHERE GUEST_ID=2

--Count the total number of guests in the GUESTS table
SELECT COUNT(1) NUMBER_OF_GUESTS FROM GUESTS;

--Find the average price of all rooms
SELECT AVG(PRICE) AVERAGE_PRICE FROM ROOMS

--Calculate the total revenue generated by all reservations
SELECT SUM(RM.PRICE) TOTAL_REVENUE FROM RESERVATIONS R LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID AND R.STATUS <> 'Cancelled'

--Determine the number of reservations with a Cancelled status
SELECT COUNT(1) NUMBER_OF_RESERVATIONS FROM RESERVATIONS WHERE STATUS='Cancelled'

--Count the number of rooms that are currently available
SELECT COUNT(1) NUMBER_OF_ROOMS_AVAILABLE FROM ROOMS WHERE AVAILABLE = 1

--Calculate the average length of stay for all reservations
SELECT AVG(DATEDIFF(DAY,START_DATE,END_DATE)) AVERAGE_LENGTH_OF_STAY FROM RESERVATIONS

--Find the minimum and maximum room prices
SELECT MIN(PRICE) STARTING_PRICE,MAX(PRICE) MAXIMUM_PRICE FROM ROOMS

--Count the number of unique guests who made reservations
SELECT COUNT(DISTINCT GUEST_ID) NUMBER_OF_UNIQUE_GUESTS FROM RESERVATIONS
WHERE STATUS <> 'CANCELLED'

--Calculate the total number of days booked for each room type
SELECT RM.ROOM_TYPE,SUM(DATEDIFF(DAY,R.START_DATE,R.END_DATE)) TOTAL_NUMBER_OF_DAYS_BOOKED FROM RESERVATIONS R 
LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID WHERE R.STATUS <> 'CANCELLED'
GROUP BY RM.ROOM_TYPE 

--Get the number of reservations for each reservation status
SELECT STATUS,COUNT(1) NUMBER_OF_RESERVATIONS FROM RESERVATIONS GROUP BY STATUS

--Retrieve the top 5 most expensive rooms
SELECT TOP 5 * FROM ROOMS ORDER BY PRICE DESC

--Find all reservations that overlap with a specific date (2024-02-15)
SELECT * FROM RESERVATIONS WHERE '2024-02-15' BETWEEN START_DATE AND END_DATE

--List all guests who have made more than 2 reservations
SELECT * FROM GUESTS WHERE GUEST_ID IN 
							(SELECT GUEST_ID FROM RESERVATIONS GROUP BY GUEST_ID HAVING COUNT(RESERVATION_ID) > 2)

--Display all room types that are not booked between 2024-01-10 and 2024-01-20
SELECT DISTINCT RM.ROOM_TYPE FROM ROOMS RM LEFT JOIN RESERVATIONS R ON RM.ROOM_ID = R.ROOM_ID
WHERE R.START_DATE BETWEEN '2024-01-10' AND '2024-01-20' AND R.END_DATE BETWEEN '2024-01-10' AND '2024-01-20'

--Find the guest who has spent the most on reservations
SELECT TOP 1 G.GUEST_ID,G.FIRST_NAME,SUM(RM.PRICE) AMOUNT_SPENT FROM RESERVATIONS R 
LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID
LEFT JOIN GUESTS G ON R.GUEST_ID=G.GUEST_ID WHERE R.STATUS <> 'CANCELLED' 
GROUP BY G.GUEST_ID,G.FIRST_NAME 
ORDER BY AMOUNT_SPENT DESC,G.FIRST_NAME 

--Display the details of the longest reservation made
SELECT TOP 1 *,DATEDIFF(DAY,START_DATE,END_DATE) DAYS FROM RESERVATIONS WHERE STATUS <> 'CANCELLED' ORDER BY DAYS DESC

--List all rooms along with their reservation count, including rooms with no reservations
SELECT *,(SELECT COUNT(1) FROM RESERVATIONS WHERE STATUS <> 'CANCELLED' AND ROOM_ID = R.ROOM_ID) RESERVATION_COUNT FROM ROOMS R

--Fetch the most popular room type based on the number of reservations
SELECT TOP 1 ROOM_TYPE,COUNT(RESERVATION_ID) NO_OF_RESERVATIONS FROM RESERVATIONS R 
LEFT JOIN ROOMS RM ON R.ROOM_ID=RM.ROOM_ID GROUP BY ROOM_TYPE ORDER BY NO_OF_RESERVATIONS DESC,ROOM_TYPE

--Generate a report showing each guest’s total spending and the number of reservations they made
SELECT G.GUEST_ID,G.FIRST_NAME,ISNULL(SUM(PRICE),0) TOTAL_SPENDING,ISNULL(COUNT(RESERVATION_ID),0) NUMBER_OF_RESERVATIONS_MADE FROM GUESTS G
LEFT JOIN RESERVATIONS R ON G.GUEST_ID = R.GUEST_ID LEFT JOIN ROOMS RM ON R.ROOM_ID = RM.ROOM_ID
WHERE R.STATUS <> 'CANCELLED' GROUP BY G.GUEST_ID,G.FIRST_NAME
