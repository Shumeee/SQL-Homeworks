USE [SEDC];

CREATE TABLE BusinessEntity(
Id int UNIQUE NOT NULL,
[Name] nvarchar(100),
Region nvarchar(1000),
Zipcode nvarchar(10),
Size nvarchar(10),
);

CREATE TABLE Employee(
Id int UNIQUE NOT NULL,
FirstName nvarchar(100) NOT NULL,
LastName nvarchar(100) NOT NULL,
DateOfBirth date,
Gender nchar(1),
HireDate date,
NationalIdNumber nvarchar(20)
);

CREATE TABLE Product(
Id int UNIQUE NOT NULL,
Code nvarchar(50),
[Name] nvarchar(100),
[Description] nvarchar(MAX),
[Weight] decimal(18, 2),
Price decimal(18, 2),
Cost decimal(18, 2)
);

CREATE TABLE Customer(
Id int UNIQUE NOT NULL,
[Name] nvarchar(100) NOT NULL,
AccountNumber nvarchar(50),
City nvarchar(100),
RegionName nvarchar(100),
CustomerSize nvarchar(10),
PhoneNumber nvarchar(20),
isActive bit NOT NULL
);

CREATE TABLE [Order](
Id bigint UNIQUE NOT NULL,
OrderDate datetime,
[Status] smallint,
BusinessEntityId int,
CustomerId int,
EmployeeId int,
TotalPrice decimal(18, 2),
Comment nvarchar(MAX)
);

CREATE TABLE OrderDetails(
Id bigint UNIQUE NOT NULL,
OrderId bigint,
ProductId int,
Quantity int,
Price decimal(18, 2),
);

