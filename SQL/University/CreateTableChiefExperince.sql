if Exists (select* from sys.tables Where name='Chief_experince')
drop table Chief_experince;
Create table Chief_experince
(chief_id int not null,
chief_name nchar(20) not null,
chief_adress nchar(60) not null,
experince int not null,
constraint PK_chief_experince primary key(chief_id))