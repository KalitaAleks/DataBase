use University
go
select Sum(unit_number) as '���������� ���� �� ��� ����������', Sum(cost_after) as '����� ����'  From Unit
where unit_name='�����';
select Sum(unit_number) as '���������� ������� � ����������', Sum(cost_after) as '����� ����'  From Unit
where unit_name='�������';
select Sum(unit_number) as '���������� ����������� � ����������', Sum(cost_after) as '����� ����'  From Unit
where unit_name='����������';
select Sum(unit_number) as '���������� ���������� � ����������' , Sum(cost_after) as '����� ����' From Unit
where unit_name='��������';