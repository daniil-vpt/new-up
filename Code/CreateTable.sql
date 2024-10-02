-- Создание базы данных
CREATE DATABASE InternetServicesStore;
GO

-- Использование базы данных
USE InternetServicesStore;
GO

-- Создание таблицы Услуги
CREATE TABLE Services (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2) NOT NULL,
    Duration INT NOT NULL -- Длительность в днях
);
GO

-- Создание таблицы Пользователи
CREATE TABLE Users (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Password NVARCHAR(255) NOT NULL,
    Phone NVARCHAR(20)
);
GO

-- Создание таблицы Заказы
CREATE TABLE Orders (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    ServiceID INT NOT NULL,
    OrderDate DATE NOT NULL,
    OrderStatus NVARCHAR(50) NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(ID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ID)
);
GO
