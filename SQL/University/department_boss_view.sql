USE University
GO
CREATE VIEW department_boss_view
AS 
SELECT department_name AS 'Кафедра', boss AS 'Зав. кафедры'
FROM Department
GO