select Sum(unit_number) as "парты", Sum(cost_after) as "Общая цена"  From UNIT
where unit_name='Парты';
select Sum(unit_number) as "лавочки", Sum(cost_after) as "Общая цена"  From UNIT
where unit_name='Лавочки';
select Sum(unit_number) as "компьютеры", Sum(cost_after) as "Общая цена"  From UNIT
where unit_name='Компьютеры';
select Sum(unit_number) as "проэкторы" , Sum(cost_after) as "Общая цена" From UNIT
where unit_name='Проэктор';
commit;