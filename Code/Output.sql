--Вывод списка всех доступных услуг с их описанием и ценой
SELECT Name, Description, Price
FROM Services;
GO

--Отображение истории заказов конкретного пользователя
SELECT Orders.ID, Services.Name, Orders.OrderDate, Orders.OrderStatus
FROM Orders
JOIN Services ON Orders.ServiceID = Services.ID
WHERE Orders.UserID = 1;
GO

--Вычисление общего дохода магазина за определенный период
SELECT SUM(Services.Price) AS TotalIncome
FROM Orders
JOIN Services ON Orders.ServiceID = Services.ID
WHERE Orders.OrderDate BETWEEN '2023-01-01' AND '2023-12-31'
AND Orders.OrderStatus = 'Completed';
GO
