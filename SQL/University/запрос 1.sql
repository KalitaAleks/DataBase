use University
go
select Sum(unit_number) as 'количество парт во вех аудиториях', Sum(cost_after) as 'Общая цена'  From Unit
where unit_name='парты';
select Sum(unit_number) as 'количество лавочек в аудиториях', Sum(cost_after) as 'Общая цена'  From Unit
where unit_name='лавочки';
select Sum(unit_number) as 'количество компьютеров в аудиториях', Sum(cost_after) as 'Общая цена'  From Unit
where unit_name='компьютеры';
select Sum(unit_number) as 'количество проэкторов в аудиториях' , Sum(cost_after) as 'Общая цена' From Unit
where unit_name='проэктор';