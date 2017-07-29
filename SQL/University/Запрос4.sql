Select * from Chief
where chief_id=(select distinct chief_id from Unit where hall_id=1)
