CREATE TABLE HALL
(hall_id NUMBER not null,
hall_square NUMBER not null,
hall_windows NUMBER not null,
heating NUMBER not null,
hall_target VARCHAR2(20 char) not null,
department_id NUMBER not null,
kadastr NUMBER not null,
hall_chief VARCHAR2(20 char) not null,
constraint PK_hall primary key (hall_id),
constraint FK_department_hall foreign key (department_id) references DEPARTMENT (department_id)  on delete cascade,
constraint FK_bulding_hall foreign key (kadastr) references BUILDING (kadastr)  on delete cascade)

