USE University
GO
DECLARE   @department_name AS NCHAR(20), @boss AS NCHAR(20), @phone AS NCHAR(10)
Print 'Список кафедр относящихся к деканату ФИТиКС';
DECLARE  cur CURSOR LOCAL
FOR
SELECT   department_name, boss, phone
FROM Department
WHERE office_dean='ФИТиКС'
OPEN cur;
FETCH NEXT FROM cur INTO   @department_name, @boss, @phone
WHILE @@FETCH_STATUS=0
BEGIN 
PRINT 'Кафедра '+@department_name +' Зав.Кафедрой '+ @boss+' тел:'+@phone
FETCH NEXT FROM cur INTO  @department_name, @boss, @phone
END 

CLOSE cur;
DEALLOCATE cur;

