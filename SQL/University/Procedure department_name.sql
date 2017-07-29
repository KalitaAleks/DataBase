USE University;
GO
IF OBJECT_ID('Department_Name','P') IS NOT NULL
DROP PROCEDURE Department_Name
GO
CREATE PROCEDURE Department_Name
@department_name NCHAR(20) OUTPUT,
@hall_id  INT =1

AS
BEGIN
SET NOCOUNT ON;

SET @department_name=(SELECT department_name FROM Department WHERE department_id=(SELECT department_id FROM Hall WHERE hall_id = @hall_id))
END
GO



