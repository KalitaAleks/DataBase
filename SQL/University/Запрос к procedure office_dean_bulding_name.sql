USE University
GO
DECLARE  @office_dean AS NCHAR(20), @bulding_name1 AS NCHAR(20), @bulding_name2 NCHAR(20)
EXEC Office_dean_Bulding_name @office_dean  OUTPUT, @bulding_name1  
OUTPUT,@bulding_name2 OUTPUT, @department_name='Робототехника'
PRINT @office_dean
PRINT @bulding_name1
PRINT @bulding_name2
GO