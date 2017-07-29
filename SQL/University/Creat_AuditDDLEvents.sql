USE University
GO
IF OBJECT_ID('AuditDDLEvents','U') IS NOT NULL
DROP TABLE AuditDDLEvents
GO
CREATE TABLE AuditDDLEvents
(audit_lsn int not null IDENTITY,
post_time DATETIME not null,
event_type sysname not null,
login_name sysname not null,
scheme_name sysname not null,
object__name sysname not null,
target_object_name sysname  null,
eventdata XML not null,
CONSTRAINT PK_AuditDDLEvents primary key(audit_lsn));
GO