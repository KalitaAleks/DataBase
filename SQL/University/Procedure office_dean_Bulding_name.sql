--Вывести название деканата и название корпуса по имени кафедры
USE University;
GO
IF OBJECT_ID('Office_dean_Bulding_name','P') IS NOT NULL
DROP PROCEDURE Office_dean_Bulding_name
GO
CREATE PROCEDURE Office_dean_Bulding_name 
@offise_dean NCHAR(20) OUTPUT,
@bulding_name1 NCHAR(20) OUTPUT,
@bulding_name2 NCHAR(20) OUTPUT,
@department_name NCHAR(20)
AS
BEGIN
SET NOCOUNT ON;
SET @offise_dean=(SELECT office_dean FROM Department WHERE department_name=@department_name)
SET @bulding_name1=(SELECT bulding_name FROM Bulding WHERE kadastr=(SELECT MIN(kadastr) 
FROM Hall WHERE department_id=(SELECT DISTINCT  department_id FROM Department WHERE department_name=@department_name)))
SET @bulding_name2=(SELECT bulding_name FROM Bulding WHERE kadastr=(SELECT MAX(kadastr) 
FROM Hall WHERE department_id=(SELECT DISTINCT  department_id FROM Department WHERE department_name=@department_name)))
END
GO
