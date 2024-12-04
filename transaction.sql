START TRANSACTION;

-- Thêm bài hát mới vào InvoiceLine
INSERT INTO InvoiceLine (InvoiceId, TrackId, UnitPrice, Quantity)
VALUES (1, 3, 0.99, 2);

-- Cập nhật tổng tiền hóa đơn
UPDATE Invoice
SET Total = Total + (0.99 * 2)
WHERE InvoiceId = 1;

-- Kiểm tra điều kiện tổng tiền (nếu vượt $50 thì hủy)
IF (SELECT Total FROM Invoice WHERE InvoiceId = 1) > 50 THEN
    ROLLBACK;
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Transaction exceeds the limit of $50.';
ELSE
    COMMIT;
END IF;
