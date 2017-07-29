CREATE OR REPLACE PROCEDURE Office_dean_Bulding_name (p_offise_dean out VARCHAR2,
p_bulding_name1 out VARCHAR2,
p_bulding_name2 out VARCHAR2,
p_department_name in VARCHAR2)
IS
BEGIN
SELECT DEPARTMENT.office_dean INTO p_offise_dean FROM DEPARTMENT WHERE DEPARTMENT.department_name=p_department_name;
SELECT BUILDING.bulding_name INTO p_bulding_name1 FROM BUILDING WHERE BUILDING.kadastr=(SELECT MIN(HALL.kadastr) FROM HALL WHERE HALL.department_id=(SELECT DISTINCT  DEPARTMENT.department_id FROM DEPARTMENT WHERE DEPARTMENT.department_name=p_department_name));
SELECT BUILDING.bulding_name INTO p_bulding_name2 FROM BUILDING WHERE BUILDING.kadastr=(SELECT MAX(HALL.kadastr) FROM HALL WHERE HALL.department_id=(SELECT DISTINCT  DEPARTMENT.department_id FROM DEPARTMENT WHERE DEPARTMENT.department_name=p_department_name));
END;
