-- Заполнение таблицы Услуги
INSERT INTO Services (Name, Description, Price, Duration) VALUES
('Online Course', 'Comprehensive online course on programming', 100.00, 30),
('Streaming Subscription', 'Monthly subscription to streaming service', 15.00, 30),
('Game Access', 'Access to premium online games', 50.00, 30);
GO

-- Заполнение таблицы Пользователи
INSERT INTO Users (FullName, Email, Password, Phone) VALUES
('John Doe', 'john.doe@example.com', 'password123', '123-456-7890'),
('Jane Smith', 'jane.smith@example.com', 'password456', '098-765-4321');
GO

-- Заполнение таблицы Заказы
INSERT INTO Orders (UserID, ServiceID, OrderDate, OrderStatus) VALUES
(1, 1, '2023-01-15', 'Completed'),
(1, 2, '2023-02-20', 'Completed'),
(2, 3, '2023-03-10', 'Pending');
GO
