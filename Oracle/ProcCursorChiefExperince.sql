CREATE OR REPLACE PROCEDURE Proc_Chief_Experince IS
p_chief_name VARCHAR2(20 CHAR);
p_chief_adress VARCHAR2(60 CHAR);
p_chief_experince NUMBER;
p_chief_id NUMBER;
CURSOR cur_Proc_Chief_Experince IS
SELECT CHIEF_ID ,
CHIEF_NAME ,
CHIEF_ADRESS ,
EXPERINCE  FROM CHIEF WHERE CHIEF.EXPERINCE>5;
BEGIN
OPEN cur_Proc_Chief_Experince;
FETCH cur_Proc_Chief_Experince INTO p_chief_id, p_chief_name,
p_chief_adress,
p_chief_experince;
WHILE cur_Proc_Chief_Experince%FOUND LOOP
INSERT INTO  Chief_experince VALUES(p_chief_id, p_chief_name,
p_chief_adress,
p_chief_experince);
COMMIT;
FETCH cur_Proc_Chief_Experince INTO p_chief_id, p_chief_name,
p_chief_adress,
p_chief_experince;
END LOOP;
CLOSE cur_Proc_Chief_Experince;
END;


