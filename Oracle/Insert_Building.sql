SET SERVEROUT ON;
DELETE FROM BUILDING;
INSERT
INTO BUILDING VALUES
  (
    1,
    '������� ������',
    5623,
    '����, �������� ����, 11',
    '01/02/1984',
    '���������',
    12,
    4,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    2,
    '���1',
    5623,
    '����, �������� ����, 11',
  '12/02/1984',
    '���������',
    12,
    3,
   null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    3,
    '���8',
    5623,
    '����, �������� ����, 11',
   '12/02/1984',
    '���������',
    12,
    8,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    4,
    '���6',
    5623,
    '����, �������� ����, 11',
 '12/02/1984',
    '���������',
    12,
    5,
    null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    5,
    '���5',
    5623,
    '����, �������� ����, 12',
     '12/02/1984',
    '���������',
    12,
    5,
null,
    'not'
  );
INSERT
INTO BUILDING VALUES
  (
    6,
    '���7',
    5623,
    '����, �������� ����, 14',
     '12/02/1984',
    '���������',
    12,
    8,
null,
    'not'
  );
COMMIT;