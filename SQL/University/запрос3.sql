declare @i As INT set @i=(select count(*) from Hall)
declare @summa as int set @summa=0 
declare @a as int set @a=0 
declare @s as int set @s=0 
 while (@i>0)
 Begin
 Set @a=(select Sum(unit_number) From Unit Where(hall_id=
(select DISTINCT hall_id 
from Hall
where (hall_id=@i and kadastr=3))))
while(@a>0)
begin
set @summa=@a+@s
set @s=@summa
set @a=0
end
set @i=@i-1 
End
print 'Всего имущества в корпусе УЛК8'
print @summa 
