-- 1. Inner Join: 
SELECT 
    t.TrackId, t.Name AS TrackName, a.Title AS AlbumTitle, ar.Name AS ArtistName
FROM 
    Track t
INNER JOIN 
    Album a ON t.AlbumId = a.AlbumId
INNER JOIN 
    Artist ar ON a.ArtistId = ar.ArtistId;

-- 2. Outer Join:
SELECT 
    a.AlbumId, a.Title AS AlbumTitle, ar.Name AS ArtistName
FROM 
    Album a
LEFT OUTER JOIN 
    Artist ar ON a.ArtistId = ar.ArtistId;

-- 3. Subquery trong WHERE: 
SELECT 
    t.TrackId, t.Name AS TrackName
FROM 
    Track t
WHERE 
    t.AlbumId IN (
        SELECT a.AlbumId 
        FROM Album a
        INNER JOIN Artist ar ON a.ArtistId = ar.ArtistId
        WHERE ar.Name = 'The Beatles'
    );

-- 4. Subquery trong FROM: 
SELECT 
    a.Title AS AlbumTitle, track_counts.TotalTracks
FROM 
    Album a
INNER JOIN (
    SELECT 
        AlbumId, COUNT(*) AS TotalTracks
    FROM 
        Track
    GROUP BY 
        AlbumId
) AS track_counts ON a.AlbumId = track_counts.AlbumId;

-- 5. Group By với hàm tổng hợp: 
SELECT 
    c.CustomerId, 
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    SUM(i.Total) AS TotalSpent
FROM 
    Customer c
INNER JOIN 
    Invoice i ON c.CustomerId = i.CustomerId
GROUP BY 
    c.CustomerId, c.FirstName, c.LastName;

-- 6. Group By với hàm tổng hợp:
SELECT 
    g.Name AS GenreName,
    COUNT(t.TrackId) AS TotalTracks,
    SUM(t.Milliseconds) AS TotalMilliseconds
FROM 
    Genre g
LEFT JOIN 
    Track t ON g.GenreId = t.GenreId
GROUP BY 
    g.GenreId, g.Name;

