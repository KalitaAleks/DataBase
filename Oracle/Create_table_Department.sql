CREATE TABLE DEPARTMENT
(department_id NUMBER not null,
department_name VARCHAR2(20 char) not null,
boss VARCHAR2(20 char) not null,
phone NUMBER not null,
office_dean VARCHAR2(10 char) not null,
constraint PK_department primary key (department_id))