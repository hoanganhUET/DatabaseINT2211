USE ChinookDB;

ALTER TABLE Album
ADD CONSTRAINT FK_Album_Artist
FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId);

ALTER TABLE Track
ADD CONSTRAINT FK_Track_Album
FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId);

ALTER TABLE Track
ADD CONSTRAINT FK_Track_MediaType
FOREIGN KEY (MediaTypeId) REFERENCES MediaType(MediaTypeId);

ALTER TABLE Track
ADD CONSTRAINT FK_Track_Genre
FOREIGN KEY (GenreId) REFERENCES Genre(GenreId);

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_ReportsTo
FOREIGN KEY (ReportsTo) REFERENCES Employee(EmployeeId);

ALTER TABLE Customer
ADD CONSTRAINT FK_Customer_SupportRep
FOREIGN KEY (SupportRepId) REFERENCES Employee(EmployeeId);

ALTER TABLE Invoice
ADD CONSTRAINT FK_Invoice_Customer
FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId);

ALTER TABLE InvoiceLine
ADD CONSTRAINT FK_InvoiceLine_Invoice
FOREIGN KEY (InvoiceId) REFERENCES Invoice(InvoiceId);

ALTER TABLE InvoiceLine
ADD CONSTRAINT FK_InvoiceLine_Track
FOREIGN KEY (TrackId) REFERENCES Track(TrackId);

ALTER TABLE PlaylistTrack
ADD CONSTRAINT FK_PlaylistTrack_Playlist
FOREIGN KEY (PlaylistId) REFERENCES Playlist(PlaylistId);

ALTER TABLE PlaylistTrack
ADD CONSTRAINT FK_PlaylistTrack_Track
FOREIGN KEY (TrackId) REFERENCES Track(TrackId);
