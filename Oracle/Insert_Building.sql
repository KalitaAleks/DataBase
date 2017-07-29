SET SERVEROUT ON;
DELETE FROM BUILDING;
INSERT
INTO BUILDING VALUES
  (
    1,
    'Главный корпус',
    5623,
    'Омск, Проспект Мира, 11',
    '01/02/1984',
    'Панельный',
    12,
    4,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    2,
    'УЛК1',
    5623,
    'Омск, Проспект Мира, 11',
  '12/02/1984',
    'Панельный',
    12,
    3,
   null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    3,
    'УЛК8',
    5623,
    'Омск, Проспект Мира, 11',
   '12/02/1984',
    'Панельный',
    12,
    8,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    4,
    'УЛК6',
    5623,
    'Омск, Проспект Мира, 11',
 '12/02/1984',
    'Панельный',
    12,
    5,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    5,
    'УЛК5',
    5623,
    'Омск, Проспект Мира, 12',
     '12/02/1984',
    'Панельный',
    12,
    5,
null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    6,
    'УЛК7',
    5623,
    'Омск, Проспект Мира, 14',
     '12/02/1984',
    'Панельный',
    12,
    8,
null,
    'not'
  );
COMMIT;