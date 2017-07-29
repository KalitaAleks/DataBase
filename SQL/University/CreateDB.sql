use master;
go
if DB_ID ('University') is not null
DROP database University;
go
create database University
On primary ( Name=University_dat, filename="D:\University\University.mdf", size= 5 mb, maxsize=unlimited, filegrowth=1 mb)
 log on (name=University_log,  filename="D:\University\University.log", size= 1 mb, maxsize=30 mb, filegrowth=1 mb)
 Collate Cyrillic_General_CI_AS;
go
