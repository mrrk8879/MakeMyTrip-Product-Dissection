CREATE TABLE Users (
  UserID SERIAL PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100),
  Password VARCHAR(20),
  PhoneNumber BIGINT,
  RegistrationDate DATE
);

CREATE TABLE Bookings (
  BookingID SERIAL PRIMARY KEY,
  UserID INT,
  BookingDateTime TIMESTAMP,
  TotalPrice DECIMAL(10,2),
  Status VARCHAR(20),
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Flights (
  FlightID SERIAL PRIMARY KEY,
  Airline VARCHAR(100),
  DepartureAirport VARCHAR(3),
  ArrivalAirport VARCHAR(3),
  DepartureDateTime TIMESTAMP,
  ArrivalDateTime TIMESTAMP, 
  Price DECIMAL(10,2),
  AvailableSeats INT  
);

CREATE TABLE Hotels (
  HotelID SERIAL PRIMARY KEY,
  Name VARCHAR(100),
  Location VARCHAR(100),
  CheckInDateTime TIMESTAMP,
  CheckOutDateTime TIMESTAMP,
  PricePerNight DECIMAL(10,2),
  AvailableRooms INT
);

CREATE TABLE Buses (
  BusID SERIAL PRIMARY KEY,
  Operator VARCHAR(100),
  DepartureLocation VARCHAR(100),
  ArrivalLocation VARCHAR(100),
  DepartureDateTime TIMESTAMP,
  ArrivalDateTime TIMESTAMP,
  Price DECIMAL(10,2),
  AvailableSeats INT
);

CREATE TABLE Trains (
  TrainID SERIAL PRIMARY KEY,
  Operator VARCHAR(100),
  DepartureStation VARCHAR(100),
  ArrivalStation VARCHAR(100),
  DepartureDateTime TIMESTAMP,
  ArrivalDateTime TIMESTAMP,
  Price DECIMAL(10,2), 
  AvailableSeats INT
);

CREATE TABLE CarRentals (
  CarRentalID SERIAL PRIMARY KEY,
  CarType VARCHAR(50),
  PickupLocation VARCHAR(100),
  DropOffLocation VARCHAR(100),
  PickupDateTime TIMESTAMP,
  DropOffDateTime TIMESTAMP,
  Price DECIMAL(10,2)
);

CREATE TABLE FlightBookings (
  FlightBookingID SERIAL PRIMARY KEY,
  BookingID INT,
  FlightID INT,
  Passengers INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
  FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

CREATE TABLE HotelBookings (
  HotelBookingID SERIAL PRIMARY KEY,
  BookingID INT,
  HotelID INT,
  NumberOfRooms INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
  FOREIGN KEY (HotelID) REFERENCES Hotels(HotelID)
);

CREATE TABLE BusBookings (
  BusBookingID SERIAL PRIMARY KEY,
  BookingID INT,
  BusID INT,
  Passengers INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
  FOREIGN KEY (BusID) REFERENCES Buses(BusID)
);

CREATE TABLE TrainBookings (
  TrainBookingID SERIAL PRIMARY KEY,
  BookingID INT, 
  TrainID INT,
  Passengers INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
  FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)  
);

CREATE TABLE CarRentalBookings (
  CarRentalBookingID SERIAL PRIMARY KEY,
  BookingID INT,
  CarRentalID INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
  FOREIGN KEY (CarRentalID) REFERENCES CarRentals(CarRentalID)
);

CREATE TABLE Payments (
  PaymentID SERIAL PRIMARY KEY,
  BookingID INT,
  PaymentType VARCHAR(20),
  PaymentDate DATE, 
  PaymentAmount DECIMAL(10,2),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

CREATE TABLE DiscountCoupons (
  CouponID SERIAL PRIMARY KEY,
  Code VARCHAR(20),
  DiscountPercent INT,
  MinimumOrderValue DECIMAL(10,2),
  ExpiryDate DATE,
  BookingID INT,
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

CREATE TABLE Reviews (
  ReviewID SERIAL PRIMARY KEY,
  UserID INT,
  BookingID INT,
  Rating INT,
  Comment TEXT,
  ReviewDate DATE,  
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);