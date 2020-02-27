select * from students where sid = 3;

-- 定义存储过程 根据id修改指定学生年龄+5，并打印前后的年龄
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

-- 调用存储过程
begin
  updateAge(1);
end;

-- 查看存储过程的脚本
select text from user_source where name = 'UPDATEAGE';
-- 查看存储过程的状态
select status from user_objects where object_name = 'UPDATEAGE';

-- 删除存储过程
drop procedure updateAge;


-- 存储过程out 查询指定学生的年龄
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

