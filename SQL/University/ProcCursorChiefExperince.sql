USE University 
GO
IF  OBJECT_ID('Proc_Chief_Experince','P') IS NOT NULL
DROP PROCEDURE Proc_Chief_Experince
GO
CREATE PROCEDURE Proc_Chief_Experince
AS
BEGIN
DECLARE @chief_name AS NCHAR(20), @chief_adress AS NCHAR(50), @chief_experince AS INT, @chief_id AS INT
DECLARE cur CURSOR LOCAL 
FOR
SELECT *
FROM Chief
WHERE experince>5
OPEN cur
FETCH NEXT FROM cur INTO @chief_id, @chief_name, @chief_adress, @chief_experince
WHILE @@FETCH_STATUS=0
BEGIN
INSERT INTO Chief_experince VALUES (@chief_id, @chief_name, @chief_adress, @chief_experince)
FETCH NEXT FROM cur INTO @chief_id, @chief_name, @chief_adress, @chief_experince
END
CLOSE cur
DEALLOCATE cur
END
GO
