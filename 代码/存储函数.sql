-- 存储函数 查询指定学生的年龄
create or replace function findAgeById(id number) return number
as
age number(3);
begin
  select s.age into age from students s where s.sid = id;
  return age;
end;

-- 调用存储函数
declare
age number(3);
begin
  age := findAgeById(1);
  dbms_output.put_line(age);
end;

-- 查看
select text from user_source where name = 'FINDAGEBYID';

-- 删除
drop function FINDAGEBYID;
