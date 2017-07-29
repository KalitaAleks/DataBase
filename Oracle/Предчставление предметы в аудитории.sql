CREATE VIEW unit_price_view
AS
SELECT  unit_name AS Наименование, unit_number AS Количество, (UNIT_NUMBER*COST_) AS "Общая цена", hall_id AS Аудитория
FROM UNIT
WHERE (unit_name='Компьютеры' or unit_name='Проэктор' or unit_name='Парты' or unit_name='Лавочки') 
WITH CHECK OPTION;
Commit;