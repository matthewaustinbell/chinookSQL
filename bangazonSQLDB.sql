if not exists (select * from master.dbo.sysdatabases where [name] = 'bangazon')
create database bangazon
go

create schema emp
go

use bangazon
if not exists (select * from sys.tables where [name] = 'Customer')
begin
	create table Customer
	-- what to start at what to increment by
	(
		 [customerId] int primary key identity(1,1),
		 customerFirstName nvarchar(50) not null,
		 customerLastName nvarchar(50) not null,
		 activeAccount bit not null,
		 accountCreationDate Date not null,
	)
end
else
	print'Customer table already exists'

if not exists (select * from sys.tables where [name] = 'Product')
begin
	create table Product
	(
		[ProductId] int primary key identity(1,1),
		title nvarchar(50) not null,
		Price Decimal not null,
		customerId nvarchar(250) not null,
		[description] nvarchar(250) null,
		productQuantity Decimal not null,
		productTypeId nvarchar(250) not null,
	)
end


if not exists (select * from sys.tables where [name] = 'ProductOrders')
begin
	create table ProductOrders
	(
		[productOrderId] int primary key identity(1,1),
		orderId nvarchar(50) not null,
		productId nvarchar(50) not null,
		productQuantity decimal not null,
	)
end


if not exists (select * from sys.tables where [name] = 'PaymentTypes')
begin
	create table PaymentTypes
	(
		[PaymentTypeId] int primary key,
		DeliveryDate Date null,
		accountNumber int null,
		customerId nvarchar not null,
	)
end

if not exists (select * from sys.tables where [name] = 'ProductType')
begin
	create table ProductType
	(
		[productTypeId] int primary key,
		productTypeName nvarchar(50) not null,
	)
end

if not exists (select * from sys.tables where [name] = 'Order')
begin
	create table [Order]
	(
		[OrderId] int primary key,
		[description] nvarchar(250) null,
		productQuantity int not null,
		customerId nvarchar(250)not null,
		productTypeId nvarchar(250)not null,
	)
end

--siteTwo begins after this line

if not exists (select * from sys.tables where [name] = 'emp.Employee')
begin
	create table [emp.Employee]
	(
		[EmployeesId] int primary key,
		StartDate Date not null,
		DepartmentId nvarchar(250)not null,
	)
end

alter table emp.Employee
ADD FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null

if not exists (select * from sys.tables where [name] = 'emp.Computer')
begin
	create table [emp.Computer]
	(
		[ComputerId] int primary key,
		PurchaseDate Date null,
		DecomDate Date null,
		Malfunctioning bit null,
		EmployeeId nvarchar(250) not null,
		inCommission bit null,
	)
end

if not exists (select * from sys.tables where [name] = 'emp.EmployeeTraining')
begin
	create table [emp.EmployeeTraining]
	(
		[EmployeeTrainingId] int primary key,
		[employeeId] nvarchar(250) not null,
		TrainingProgramId nvarchar(250)not null,
	)
end

if not exists (select * from sys.tables where [name] = 'emp.TrainingProgram')
begin
	create table [emp.TrainingProgram]
	(
		[TrainingProgramsId] int primary key,
		StartDate Date not null,
		EndDate Date not null,
		AttendeesMax int null,
	)
end

if not exists (select * from sys.tables where [name] = 'emp.Department')
begin
	create table [emp.Department]
	(
		[departmentsId] int primary key,
		supervisorId nvarchar(250) null,
		expenceBudget Decimal null,
	)
end




