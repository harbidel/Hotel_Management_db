CREATE TABLE Hotels (
  HotelID INT PRIMARY KEY,
  Name VARCHAR(100),
  Location VARCHAR(100),
  Contact VARCHAR(100)
);

CREATE TABLE Rooms (
  RoomID INT PRIMARY KEY,
  HotelID INT,
  Type VARCHAR(50),
  Capacity INT,
  FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

CREATE TABLE Guests (
  GuestID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100),
  Phone VARCHAR(20),
  Nationality VARCHAR(50)
);

CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  GuestID INT,
  RoomID INT,
  CheckIn DATE,
  CheckOut DATE,
  Status VARCHAR(20),
  FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
  FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

CREATE TABLE Invoices (
  InvoiceID INT PRIMARY KEY,
  BookingID INT,
  TotalAmount DECIMAL(10, 2),
  PaymentStatus VARCHAR(20),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

-- Hotels table
INSERT INTO Hotels (HotelID, Name, Location, Contact)
VALUES (2, 'Hotel B', 'Location B', 'Contact B'),
       (3, 'Hotel C', 'Location C', 'Contact C'),
       (4, 'Hotel D', 'Location D', 'Contact D'),
       (5, 'Hotel E', 'Location E', 'Contact E'),
       (6, 'Hotel F', 'Location F', 'Contact F'),
       (7, 'Hotel G', 'Location G', 'Contact G'),
       (8, 'Hotel H', 'Location H', 'Contact H'),
       (9, 'Hotel I', 'Location I', 'Contact I'),
       (10, 'Hotel J', 'Location J', 'Contact J'),
       (11, 'Hotel K', 'Location K', 'Contact K'),
       (12, 'Hotel L', 'Location L', 'Contact L'),
       (13, 'Hotel M', 'Location M', 'Contact M'),
       (14, 'Hotel N', 'Location N', 'Contact N'),
       (15, 'Hotel O', 'Location O', 'Contact O'),
       (16, 'Hotel P', 'Location P', 'Contact P'),
       (17, 'Hotel Q', 'Location Q', 'Contact Q'),
       (18, 'Hotel R', 'Location R', 'Contact R'),
       (19, 'Hotel S', 'Location S', 'Contact S'),
       (20, 'Hotel T', 'Location T', 'Contact T'),
       (21, 'Hotel U', 'Location U', 'Contact U'),
       (22, 'Hotel V', 'Location V', 'Contact V'),
       (23, 'Hotel W', 'Location W', 'Contact W'),
       (24, 'Hotel X', 'Location X', 'Contact X'),
       (25, 'Hotel Y', 'Location Y', 'Contact Y'),
       (26, 'Hotel Z', 'Location Z', 'Contact Z');

-- Rooms table
INSERT INTO Rooms (RoomID, HotelID, Type, Capacity)
VALUES (2, 2, 'Double', 2),
       (3, 2, 'Single', 1),
       (4, 3, 'Suite', 3),
       (5, 3, 'Double', 2),
       (6, 4, 'Single', 1),
       (7, 4, 'Double', 2),
       (8, 5, 'Suite', 3),
       (9, 5, 'Single', 1),
       (10, 6, 'Double', 2),
       (11, 6, 'Single', 1),
       (12, 7, 'Double', 2),
       (13, 7, 'Single', 1),
       (14, 8, 'Suite', 3),
       (15, 8, 'Double', 2),
       (16, 9, 'Single', 1),
       (17, 9, 'Double', 2),
       (18, 10, 'Suite', 3),
       (19, 10, 'Single', 1),
       (20, 11, 'Double', 2),
       (21, 11, 'Single', 1),
       (22, 12, 'Double', 2),
       (23, 12, 'Single', 1),
       (24, 13, 'Suite', 3),
       (25, 13, 'Double', 2),
       (26, 14, 'Single', 1),
       (27, 14, 'Double', 2),
       (28, 15, 'Suite', 3),
       (29, 15, 'Single', 1),
       (30, 16, 'Double', 2),
       (31, 16, 'Single', 1),
       (32, 17, 'Double', 2),
       (33, 17, 'Single', 1),
       (34, 18, 'Suite', 3),
       (35, 18, 'Double', 2),
       (36, 19, 'Single', 1),
       (37, 19, 'Double', 2),
       (38, 20, 'Suite', 3),
       (39, 20, 'Single', 1),
       (40, 21, 'Double', 2),
       (41, 21, 'Single', 1),
       (42, 22, 'Double', 2),
       (43, 22, 'Single', 1),
       (44, 23, 'Suite', 3),
       (45, 23, 'Double', 2),
       (46, 24, 'Single', 1),
       (47, 24, 'Double', 2),
       (48, 25, 'Suite', 3),
       (49, 25, 'Single', 1),
       (50, 26, 'Double', 2),
       (51, 26, 'Single', 1);

-- Guests table
INSERT INTO Guests (GuestID, FirstName, LastName, Email, Phone, Nationality)
VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', '0987654321', 'USA'),
       (3, 'David', 'Johnson', 'davidjohnson@example.com', '9876543210', 'UK'),
       (4, 'Emily', 'Brown', 'emilybrown@example.com', '0123456789', 'Australia'),
       (5, 'Michael', 'Davis', 'michaeldavis@example.com', '9876543210', 'Canada'),
       (6, 'Sarah', 'Miller', 'sarahmiller@example.com', '0123456789', 'USA'),
       (7, 'Robert', 'Wilson', 'robertwilson@example.com', '9876543210', 'Germany'),
       (8, 'Sophia', 'Moore', 'sophiamoore@example.com', '0123456789', 'USA'),
       (9, 'William', 'Taylor', 'williamtaylor@example.com', '9876543210', 'Canada'),
       (10, 'Olivia', 'Anderson', 'oliviaanderson@example.com', '0123456789', 'USA'),
       (11, 'James', 'Thomas', 'jamesthomas@example.com', '9876543210', 'UK'),
       (12, 'Emma', 'Jackson', 'emmajackson@example.com', '0123456789', 'USA'),
       (13, 'Joseph', 'White', 'josephwhite@example.com', '9876543210', 'Canada'),
       (14, 'Ava', 'Harris', 'avaharris@example.com', '0123456789', 'USA'),
       (15, 'John', 'Martinez', 'johnmartinez@example.com', '9876543210', 'Mexico'),
       (16, 'Mia', 'Clark', 'miaclark@example.com', '0123456789', 'USA'),
       (17, 'Daniel', 'Walker', 'danielwalker@example.com', '9876543210', 'Australia'),
       (18, 'Ella', 'Lopez', 'ellalopez@example.com', '0123456789', 'USA'),
       (19, 'Benjamin', 'Hill', 'benjaminhill@example.com', '9876543210', 'UK'),
       (20, 'Chloe', 'Adams', 'chloeadams@example.com', '0123456789', 'USA'),
       (21, 'Andrew', 'Wright', 'andrewwright@example.com', '9876543210', 'Canada'),
       (22, 'Grace', 'Lee', 'gracelee@example.com', '0123456789', 'USA'),
       (23, 'Christopher', 'Hall', 'christopherhall@example.com', '9876543210', 'Mexico'),
       (24, 'Victoria', 'Baker', 'victoriabaker@example.com', '0123456789', 'USA'),
       (25, 'Henry', 'Gonzalez', 'henrygonzalez@example.com', '9876543210', 'Australia'),
       (26, 'Lily', 'Nelson', 'lilynelson@example.com', '0123456789', 'USA'),
       (27, 'Jack', 'Carter', 'jackcarter@example.com', '9876543210', 'UK'),
       (28, 'Aiden', 'Perez', 'aidenperez@example.com', '0123456789', 'USA'),
       (29, 'Sofia', 'Roberts', 'sofiaroberts@example.com', '9876543210', 'Canada'),
       (30, 'Lucas', 'Turner', 'lucasturner@example.com', '0123456789', 'USA'),
       (31, 'Avery', 'Phillips', 'averyphillips@example.com', '9876543210', 'USA'),
       (32, 'Scarlett', 'Campbell', 'scarlettcampbell@example.com', '0123456789', 'USA'),
       (33, 'Logan', 'Parker', 'loganparker@example.com', '9876543210', 'USA'),
       (34, 'Abigail', 'Evans', 'abigailevans@example.com', '0123456789', 'USA'),
       (35, 'Ethan', 'Edwards', 'ethanedwards@example.com', '9876543210', 'USA'),
       (36, 'Madison', 'Collins', 'madisoncollins@example.com', '0123456789', 'USA'),
       (37, 'Jackson', 'Stewart', 'jacksonstewart@example.com', '9876543210', 'USA'),
       (38, 'Elizabeth', 'Morris', 'elizabethmorris@example.com', '0123456789', 'USA'),
       (39, 'Sebastian', 'Sanchez', 'sebastiansanchez@example.com', '9876543210', 'USA'),
       (40, 'Avery', 'Reed', 'averyreed@example.com', '0123456789', 'USA'),
       (41, 'Mila', 'Cook', 'milacook@example.com', '9876543210', 'USA'),
       (42, 'Grayson', 'Morgan', 'graysonmorgan@example.com', '0123456789', 'USA'),
       (43, 'Hannah', 'Bell', 'hannahbell@example.com', '9876543210', 'USA'),
       (44, 'Zoe', 'Murphy', 'zoemurphy@example.com', '0123456789', 'USA'),
       (45, 'Caleb', 'Rogers', 'calebrogers@example.com', '9876543210', 'USA'),
       (46, 'Nora', 'Bailey', 'norabailey@example.com', '0123456789', 'USA'),
       (47, 'Wyatt', 'Rivera', 'wyattrivera@example.com', '9876543210', 'USA'),
       (48, 'Addison', 'Cooper', 'addisoncooper@example.com', '0123456789', 'USA'),
       (49, 'Elijah', 'Richardson', 'elijahrichardson@example.com', '9876543210', 'USA'),
       (50, 'Layla', 'Hill', 'laylahill@example.com', '0123456789', 'USA');


-- Retrieve all bookings with guest details and room information

SELECT B.BookingID, G.FirstName, G.LastName, R.Type, B.CheckIn, B.CheckOut
FROM Bookings B
JOIN Guests G ON B.GuestID = G.GuestID
JOIN Rooms R ON B.RoomID = R.RoomID;



-- Retrieve all guests and their associated invoices
SELECT G.FirstName, G.LastName, I.InvoiceID, I.TotalAmount, I.PaymentStatus
FROM Guests G
JOIN Bookings B ON G.GuestID = B.GuestID
JOIN Invoices I ON B.BookingID = I.BookingID;



-- Retrieve hotel details and the count of rooms in each hotel
SELECT H.HotelID, H.Name, H.Location, COUNT(R.RoomID) AS RoomCount
FROM Hotels H
LEFT JOIN Rooms R ON H.HotelID = R.HotelID
GROUP BY H.HotelID, H.Name, H.Location;
