INSERT INTO Building VALUES(10,'УЛК2', 5623, 'Омск, Проспект Мира, 11', '12/02/1984','Панельный', 12, 3, null,'not');
INSERT INTO Building VALUES(11,'УЛК3', 5623, 'Омск, Проспект Мира, 11','12/02/1984', 'Панельный', 12, 3, null,'not');
COMMIT;
INSERT INTO Building VALUES(9,'УЛК4', 5623, 'Омск, Проспект Мира, 11', '12/02/1984','Панельный', 12, 3, null,'not');
ROLLBACK; 
COMMIT;
SELECT KADASTR ,
BULDING_NAME ,
LAND ,
ADRESS ,
BULDING_YEAR ,
MATERIAL ,
WEAR ,
FLOW ,
PHOTO ,
COMMENTARY 
FROM BUILDING;