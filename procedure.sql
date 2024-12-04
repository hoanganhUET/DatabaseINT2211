DELIMITER //

CREATE PROCEDURE GetCustomerTotalTracks(IN CustomerId INT, OUT TotalTracks INT)
BEGIN
    SELECT SUM(il.Quantity)
    INTO TotalTracks
    FROM InvoiceLine il
    JOIN Invoice i ON il.InvoiceId = i.InvoiceId
    WHERE i.CustomerId = CustomerId;
END //

DELIMITER ;
