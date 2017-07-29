use University;
go 
if Exists (select* from sys.tables Where name='Bulding')
drop table Bulding;
Create table Bulding 
(kadastr int not null,
bulding_name nchar(20) not null,
land int not null,
adress nchar(60) not null,
bulding_year date not null,
material nchar(15) not null,
wear int not null,
flow int not null,
comment nchar(60) not null,
constraint PK_bulding primary key (kadastr))
go 
if Exists (select* from sys.tables Where name='Chief')
drop table Chief;
Create table Chief
(chief_id int not null,
chief_name nchar(20) not null,
chief_adress nchar(60) not null,
experince int not null,
constraint PK_chief primary key(chief_id))
go
if Exists (select* from sys.tables Where name='Department')
drop table Department;
Create table Department
(department_id int not null,
department_name nchar(20) not null,
boss nchar(20) not null,
phone int not null,
office_dean nchar(10) not null,
constraint PK_department primary key (department_id))
go
if Exists (select* from sys.tables Where name='Hall')
drop table Hall;
Create table Hall
(hall_id int not null,
hall_square int not null,
hall_windows int not null,
heating int not null,
hall_target nchar(20) not null,
department_id int not null,
kadastr int not null,
hall_chief nchar(20) not null,
constraint PK_hall primary key (hall_id),
constraint FK_department_hall foreign key (department_id) references Department (department_id) on update cascade  on delete cascade,
constraint FK_bulding_hall foreign key (kadastr) references Bulding (kadastr) on update cascade  on delete cascade)
go
if Exists (select* from sys.tables Where name='Unit')
drop table Unit;
Create table Unit
(unit_id int not null,
unit_name nchar(20) not null,
unit_number int not null,
date_start date not null,
cost money not null,
cost_year date not null,
cost_after money not null,
period int not null,
hall_id int not null,
chief_id int not null,
constraint PK_unit primary key (unit_id),
constraint PK_hall_unit foreign key (hall_id) references Hall (hall_id) on update cascade  on delete cascade,
constraint PK_chief_unit foreign key (chief_id) references Chief (chief_id) on update cascade  on delete cascade)
go



