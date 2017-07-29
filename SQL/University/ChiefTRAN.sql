USE University
GO
SET NOCOUNT ON;
BEGIN TRAN Chief_tran
INSERT Chief VALUES(5, 'Лавринович Алексей', 'г.Омск пр. Мира', 1)
INSERT Chief VALUES(6, 'Валын Иван', 'г.Омск Нефтяники', 4)
PRINT @@TRANCOUNT;
SAVE TRAN point_one
INSERT Chief VALUES(7, 'Валын Иван', 'г.Омск Нефтяники', 4)
ROLLBACK TRAN point_one
COMMIT TRAN Chief_tran
SELECT * 
FROM Chief

