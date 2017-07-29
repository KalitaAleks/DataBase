USE University
GO
CREATE VIEW unit_price_view
AS
SELECT  unit_name AS 'Наименование единицы имущества', unit_number AS 'Количество', (unit_number*cost_after) AS 'Общая цена', hall_id AS 'Аудитория'
FROM Unit
WHERE (unit_name='Парты' or unit_name='Лавочки' or unit_name='Компьютеры' or unit_name='Проэктор') 
WITH CHECK OPTION
GO