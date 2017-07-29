CREATE OR REPLACE TRIGGER AuditDDLEvents_tr
AFTER CREATE OR ALTER OR DROP
ON SCHEMA 
DECLARE
client_name VARCHAR2(60 char);
event_type VARCHAR2(20 char);
object__name VARCHAR2(60 char);
object_type VARCHAR2(60 char);
BEGIN
client_name:=ora_dict_obj_owner;
event_type:=ora_sysevent;
object__name:=ora_dict_obj_name;
object_type:=ora_dict_obj_type;
INSERT INTO AuditDDLEvents  VALUES(TO_DATE(SYSDATE),client_name,
event_type,
object__name,
object_type);
end;
