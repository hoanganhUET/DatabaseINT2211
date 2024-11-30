CREATE database ChinookDB;
USE ChinookDB;

CREATE TABLE Artist (
    ArtistId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Album (
    AlbumId INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    ArtistId INT
);

CREATE TABLE MediaType (
    MediaTypeId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Genre (
    GenreId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Track (
    TrackId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(200) NOT NULL,
    AlbumId INT,
    MediaTypeId INT,
    GenreId INT,
    Composer VARCHAR(200),
    Milliseconds INT NOT NULL,
    Bytes INT,
    UnitPrice DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Employee (
    EmployeeId INT AUTO_INCREMENT PRIMARY KEY,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    Title VARCHAR(100),
    ReportsTo INT,
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20),
    Phone VARCHAR(20),
    Fax VARCHAR(20),
    Email VARCHAR(100) NOT NULL
);


CREATE TABLE Customer (
    CustomerId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Company VARCHAR(100),
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    PostalCode VARCHAR(20),
    Phone VARCHAR(20),
    Fax VARCHAR(20),
    Email VARCHAR(100) NOT NULL,
    SupportRepId INT
);

CREATE TABLE Invoice (
    InvoiceId INT AUTO_INCREMENT PRIMARY KEY,
    CustomerId INT,
    InvoiceDate DATETIME NOT NULL,
    BillingAddress VARCHAR(200),
    BillingCity VARCHAR(100),
    BillingState VARCHAR(100),
    BillingCountry VARCHAR(100),
    BillingPostalCode VARCHAR(20),
    Total DECIMAL(10, 2) NOT NULL
);

CREATE TABLE InvoiceLine (
    InvoiceLineId INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceId INT,
    TrackId INT,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL
);

CREATE TABLE Playlist (
    PlaylistId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE PlaylistTrack (
    PlaylistId INT,
    TrackId INT,
    PRIMARY KEY (PlaylistId, TrackId)
);


