SET IMPLICIT_TRANSACTIONS ON 
SET NOCOUNT ON
USE University
GO
INSERT INTO Bulding(kadastr, bulding_name, land, adress, material, wear, flow,  comment, bulding_year) 
VALUES(7,'���2', 5623, '����, �������� ����, 11', '���������', 12, 3,'not','1984-02-12')
INSERT INTO Bulding(kadastr, bulding_name, land, adress, material, wear, flow,  comment, bulding_year) 
VALUES(8,'���3', 5623, '����, �������� ����, 11', '���������', 12, 3,'not','12.02.1984')
PRINT @@TRANCOUNT
SAVE TRAN point1
INSERT INTO Bulding(kadastr, bulding_name, land, adress, material, wear, flow,  comment, bulding_year)
 VALUES(9,'���4', 5623, '����, �������� ����, 11', '���������', 12, 3, 'not','12.02.1984')
ROLLBACK TRAN point1
COMMIT TRAN
PRINT @@TRANCOUNT
SELECT * 
FROM Bulding