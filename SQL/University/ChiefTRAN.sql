USE University
GO
SET NOCOUNT ON;
BEGIN TRAN Chief_tran
INSERT Chief VALUES(5, '���������� �������', '�.���� ��. ����', 1)
INSERT Chief VALUES(6, '����� ����', '�.���� ���������', 4)
PRINT @@TRANCOUNT;
SAVE TRAN point_one
INSERT Chief VALUES(7, '����� ����', '�.���� ���������', 4)
ROLLBACK TRAN point_one
COMMIT TRAN Chief_tran
SELECT * 
FROM Chief

