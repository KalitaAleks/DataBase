Select * from CHIEF
where chief_id=(select distinct chief_id from UNIT where hall_id=1);
COMMIT;
