CREATE VIEW unit_price_view
AS
SELECT  unit_name AS ������������, unit_number AS ����������, (UNIT_NUMBER*COST_) AS "����� ����", hall_id AS ���������
FROM UNIT
WHERE (unit_name='����������' or unit_name='��������' or unit_name='�����' or unit_name='�������') 
WITH CHECK OPTION;
Commit;