CREATE TABLE BUILDING 
(kadastr number not null,
bulding_name VARCHAR2(20 char) not null,
land NUMBER not null,
adress VARCHAR2(60 char) not null,
bulding_year DATE not null,
material VARCHAR2(15 char) not null,
wear NUMBER not null,
flow NUMBER not null,
photo BLOB  null,
commentary VARCHAR2(60 char) not null,
constraint PK_bulding primary key (kadastr)
)

