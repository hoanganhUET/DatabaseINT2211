INSERT INTO Artist (ArtistId, Name) VALUES 
(1, 'Led Zeppelin'),
(2, 'Pink Floyd'),
(3, 'The Beatles'),
(4, 'Queen'),
(5, 'Michael Jackson');

INSERT INTO Album (AlbumId, Title, ArtistId) VALUES 
(1, 'IV', 1),
(2, 'The Dark Side of the Moon', 2),
(3, 'Abbey Road', 3),
(4, 'A Night at the Opera', 4),
(5, 'Thriller', 5);

INSERT INTO MediaType (MediaTypeId, Name) VALUES 
(1, 'MP3'),
(2, 'WAV'),
(3, 'AAC'),
(4, 'FLAC'),
(5, 'OGG');

INSERT INTO Genre (GenreId, Name) VALUES 
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Classical'),
(5, 'Hip-Hop');

INSERT INTO Track (TrackId, Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) VALUES 
(1, 'Stairway to Heaven', 1, 1, 1, 'Jimmy Page, Robert Plant', 482000, 11234567, 0.99),
(2, 'Money', 2, 2, 1, 'Roger Waters', 382000, 9234567, 0.99),
(3, 'Come Together', 3, 3, 1, 'John Lennon, Paul McCartney', 259000, 8345678, 0.99),
(4, 'Bohemian Rhapsody', 4, 4, 1, 'Freddie Mercury', 354000, 10456789, 1.29),
(5, 'Billie Jean', 5, 1, 2, 'Michael Jackson', 292000, 9456789, 1.29);

INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES 
(1, 'Adams', 'Andrew', 'General Manager', NULL, '1970-02-18', '2002-08-14', '123 Main St', 'Seattle', 'WA', 'USA', '98101', '123-456-7890', '123-456-7891', 'andrew.adams@example.com'),
(2, 'Edwards', 'Nancy', 'Sales Manager', 1, '1975-04-28', '2004-03-01', '456 Elm St', 'Seattle', 'WA', 'USA', '98102', '234-567-8901', '234-567-8902', 'nancy.edwards@example.com'),
(3, 'Johnson', 'Laura', 'IT Manager', 1, '1980-07-10', '2006-10-05', '789 Oak St', 'Seattle', 'WA', 'USA', '98103', '345-678-9012', '345-678-9013', 'laura.johnson@example.com'),
(4, 'Smith', 'James', 'Sales Support Agent', 2, '1985-09-15', '2010-05-20', '101 Pine St', 'Seattle', 'WA', 'USA', '98104', '456-789-0123', '456-789-0124', 'james.smith@example.com'),
(5, 'Williams', 'Emily', 'IT Support Agent', 3, '1990-11-05', '2012-08-30', '202 Cedar St', 'Seattle', 'WA', 'USA', '98105', '567-890-1234', '567-890-1235', 'emily.williams@example.com');

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES 
(1, 'John', 'Doe', NULL, '321 Maple St', 'Seattle', 'WA', 'USA', '98106', '678-901-2345', '678-901-2346', 'john.doe@example.com', 4),
(2, 'Jane', 'Smith', NULL, '654 Birch St', 'Seattle', 'WA', 'USA', '98107', '789-012-3456', '789-012-3457', 'jane.smith@example.com', 4),
(3, 'Robert', 'Brown', NULL, '987 Spruce St', 'Seattle', 'WA', 'USA', '98108', '890-123-4567', '890-123-4568', 'robert.brown@example.com', 4),
(4, 'Lucy', 'Wilson', NULL, '111 Fir St', 'Seattle', 'WA', 'USA', '98109', '901-234-5678', '901-234-5679', 'lucy.wilson@example.com', 5),
(5, 'Michael', 'Taylor', NULL, '222 Redwood St', 'Seattle', 'WA', 'USA', '98110', '012-345-6789', '012-345-6790', 'michael.taylor@example.com', 5);

INSERT INTO Invoice (InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total) VALUES 
(1, 1, '2024-01-01', '321 Maple St', 'Seattle', 'WA', 'USA', '98106', 14.95),
(2, 2, '2024-01-02', '654 Birch St', 'Seattle', 'WA', 'USA', '98107', 9.90),
(3, 3, '2024-01-03', '987 Spruce St', 'Seattle', 'WA', 'USA', '98108', 19.80),
(4, 4, '2024-01-04', '111 Fir St', 'Seattle', 'WA', 'USA', '98109', 29.85),
(5, 5, '2024-01-05', '222 Redwood St', 'Seattle', 'WA', 'USA', '98110', 39.75);

INSERT INTO InvoiceLine (InvoiceLineId, InvoiceId, TrackId, UnitPrice, Quantity) VALUES 
(1, 1, 1, 0.99, 1),
(2, 1, 2, 0.99, 1),
(3, 2, 3, 0.99, 1),
(4, 3, 4, 1.29, 1),
(5, 4, 5, 1.29, 2);

INSERT INTO Playlist (PlaylistId, Name) VALUES 
(1, 'Rock Classics'),
(2, 'Pop Hits'),
(3, 'Jazz Essentials'),
(4, 'Classical Favorites'),
(5, 'Top 50');

INSERT INTO PlaylistTrack (PlaylistId, TrackId) VALUES 
(1, 1),
(1, 2),
(2, 5),
(3, 3),
(4, 4);
