CREATE TRIGGER update_invoice_total
AFTER INSERT ON InvoiceLine
FOR EACH ROW
BEGIN
    UPDATE Invoice
    SET Total = Total + (NEW.UnitPrice * NEW.Quantity)
    WHERE InvoiceId = NEW.InvoiceId;
END;
