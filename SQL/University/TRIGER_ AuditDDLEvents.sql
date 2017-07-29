USE University
GO
CREATE TRIGGER trg_audit_ddl_events
ON DATABASE FOR DDL_DATABASE_LEVEL_EVENTS
AS
SET NOCOUNT ON;
DECLARE @eventdata AS XML;
SET @eventdata=EVENTDATA();
INSERT INTO AuditDDLEvents (post_time, event_type,login_name, scheme_name,object__name,target_object_name,eventdata) 
values(
@eventdata.value('(/EVENT_INSTANCE/PostTime) [1]','VARCHAR(23)'),
 @eventdata.value('(/EVENT_INSTANCE/EventType) [1]','sysname'),
  @eventdata.value('(/EVENT_INSTANCE/LoginName) [1]','sysname'),
   @eventdata.value('(/EVENT_INSTANCE/SchemaName) [1]','sysname'),
    @eventdata.value('(/EVENT_INSTANCE/ObjectName) [1]','sysname'),
	 @eventdata.value('(/EVENT_INSTANCE/TargetObjectName) [1]','sysname'),
	  @eventdata);
	  GO