select * from students where sid = 3;

-- ����洢���� ����id�޸�ָ��ѧ������+5������ӡǰ�������
create or replace procedure updateAge(id in number)
as
 age number(3);
begin
  select s.age into age from students s where s.sid = id;
  dbms_output.put_line(age);
  update students set age = age + 5 where sid = id;
  select s.age into age from students s where s.sid = id;
  dbms_output.put_line(age);
end;

select * from students where sid = 1;

-- ���ô洢����
begin
  updateAge(1);
end;

-- �鿴�洢���̵Ľű�
select text from user_source where name = 'UPDATEAGE';
-- �鿴�洢���̵�״̬
select status from user_objects where object_name = 'UPDATEAGE';

-- ɾ���洢����
drop procedure updateAge;


-- �洢����out ��ѯָ��ѧ��������
create or replace procedure PfindAgeById(id number,age out number)
as
begin
  select s.age into age from students s where s.sid = id;
end;

declare
age number(3);
begin 
  PfindAgeById(1,age);
  dbms_output.put_line(age);
end;

