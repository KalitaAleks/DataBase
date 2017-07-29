CREATE OR REPLACE PROCEDURE Department_of_FITiKS IS
p_department_name  VARCHAR2(20 Char);
p_boss VARCHAR2(20 Char);
p_phone NUMBER;
CURSOR cur_Department_of_FITiKS IS
SELECT DEPARTMENT.DEPARTMENT_NAME, DEPARTMENT.BOSS, DEPARTMENT.PHONE FROM DEPARTMENT WHERE DEPARTMENT.OFFICE_DEAN='‘»“Ë —';
BEGIN
OPEN cur_Department_of_FITiKS;

FETCH cur_Department_of_FITiKS INTO p_department_name, p_boss, p_phone;
WHILE cur_Department_of_FITiKS%FOUND LOOP
dbms_output.put_line(p_department_name ||' '|| p_boss ||' '||p_phone);
FETCH cur_Department_of_FITiKS INTO p_department_name, p_boss, p_phone;
END LOOP;
CLOSE cur_Department_of_FITiKS;
END;


