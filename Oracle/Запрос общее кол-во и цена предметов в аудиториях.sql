select Sum(unit_number) as "�����", Sum(cost_after) as "����� ����"  From UNIT
where unit_name='�����';
select Sum(unit_number) as "�������", Sum(cost_after) as "����� ����"  From UNIT
where unit_name='�������';
select Sum(unit_number) as "����������", Sum(cost_after) as "����� ����"  From UNIT
where unit_name='����������';
select Sum(unit_number) as "���������" , Sum(cost_after) as "����� ����" From UNIT
where unit_name='��������';
commit;