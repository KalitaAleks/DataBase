CREATE  TABLE AuditDDLEvents
(post_time DATE not null,
client_name VARCHAR2(60 char) not null,
event_type VARCHAR2(20 char) not null,
object__name VARCHAR2(60 char) not null,
object_type VARCHAR2(60 char) not null)
;