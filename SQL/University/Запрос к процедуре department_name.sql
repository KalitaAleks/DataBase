USE University
GO
DECLARE @department_name AS NCHAR(20)
EXEC Department_Name @department_name OUTPUT, 9
PRINT '�������: '+@department_name
GO