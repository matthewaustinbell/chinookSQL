if not exists (select * from sys.tables where [name] = 'Chicken')
begin
	create table Chicken
	(
		 [Id] int primary key,
		 FirstName nvarchar(50) not null,
		 LastName nvarchar(50) not null,
	)
end
else
	print'Chicken table already exists'

if not exists (select * from sys.tables where [name] = 'Trainer')
begin
	create table Trainer
	(
		[Id] int primary key,
		FirstName nvarchar(50) not null,
		LastName nvarchar(50) not null,
		Specialty nvarchar(250) null,
	)
end

if not exists (select * from sys.columns where [name] = 'TrainerId')
alter table Chicken
add [TrainerId] int not null

if exists (select * from sys.columns where [name] = 'TrainerId')
alter table Chicken 
add constraint FK_Chicken_Trainer
	foreign key (TrainerId)
	references Trainer (Id) 

--alter table Chicken
--drop constraint [PK__Chicken__3214EC077E73594D]

alter table Chicken
drop constraint FK_Chicken_Trainer

