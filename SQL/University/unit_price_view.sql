USE University
GO
CREATE VIEW unit_price_view
AS
SELECT  unit_name AS '������������ ������� ���������', unit_number AS '����������', (unit_number*cost_after) AS '����� ����', hall_id AS '���������'
FROM Unit
WHERE (unit_name='�����' or unit_name='�������' or unit_name='����������' or unit_name='��������') 
WITH CHECK OPTION
GO