USE University
GO
CREATE TRIGGER building_land ON Bulding
FOR INSERT, UPDATE
AS
IF UPDATE(land) AND EXISTS(SELECT * FROM inserted WHERE land <200)
BEGIN 
PRINT '�e���������� �������� ������� ������� ����� ����������� �������'
ROLLBACK TRAN
RETURN
END

PRINT '�������� ������� ������� ���������'
RETURN
