DELIMITER $$

CREATE PROCEDURE UpdateInvoice()
BEGIN
    DECLARE invoiceTotal DECIMAL(10, 2);

    START TRANSACTION;

    -- Thêm bài hát mới vào InvoiceLine
    INSERT INTO InvoiceLine (InvoiceId, TrackId, UnitPrice, Quantity)
    VALUES (1, 3, 0.99, 2);

    -- Cập nhật tổng tiền hóa đơn
    UPDATE Invoice
    SET Total = Total + (0.99 * 2)
    WHERE InvoiceId = 1;

    -- Lấy tổng tiền hóa đơn để kiểm tra
    SELECT Total INTO invoiceTotal
    FROM Invoice
    WHERE InvoiceId = 1;

    -- Kiểm tra điều kiện tổng tiền
    IF invoiceTotal > 50 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transaction exceeds the limit of $50.';
    ELSE
        COMMIT;
    END IF;
END $$

DELIMITER ;
