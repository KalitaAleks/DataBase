CREATE TABLE UNIT
(unit_id NUMBER not null,
unit_name VARCHAR2(20 char) not null,
unit_number NUMBER not null,
date_start DATE not null,
cost_ NUMBER not null,
cost_year DATE not null,
cost_after NUMBER not null,
period_ NUMBER not null,
hall_id NUMBER not null,
chief_id NUMBER not null,
constraint PK_unit primary key (unit_id),
constraint PK_hall_unit foreign key (hall_id) references HALL (hall_id)   on delete cascade,
constraint PK_chief_unit foreign key (chief_id) references CHIEF (chief_id)   on delete cascade)