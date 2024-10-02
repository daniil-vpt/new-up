--Процедура для обновления данных пользователя
CREATE PROCEDURE UpdateUser
    @UserID INT,
    @FullName NVARCHAR(255),
    @Email NVARCHAR(255),
    @Password NVARCHAR(255),
    @Phone NVARCHAR(20)
AS
BEGIN
    UPDATE Users
    SET FullName = @FullName, Email = @Email, Password = @Password, Phone = @Phone
    WHERE ID = @UserID;
END;
GO

--Процедура для удаления заказа
CREATE PROCEDURE DeleteOrder
    @OrderID INT
AS
BEGIN
    DELETE FROM Orders WHERE ID = @OrderID;
END;
GO

--Триггер для автоматического обновления статуса заказа
CREATE TRIGGER trg_UpdateOrderStatus
ON Orders
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE Orders
    SET OrderStatus = CASE
        WHEN OrderDate < GETDATE() THEN 'Completed'
        ELSE OrderStatus
    END
    WHERE ID IN (SELECT ID FROM inserted);
END;
GO
