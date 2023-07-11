#Views

create view DeptWiseCount as
select count(EMPLOYEE_ID) as Total, DEPARTMENT_ID
from employees
group by DEPARTMENT_ID;

select * from deptwisecount;

rename table deptwisecount
to deptempcount;

alter view deptempcount as
select count(EMPLOYEE_ID) as Total, DEPARTMENT_ID
from employees
group by DEPARTMENT_ID
having total>1;

select * from deptempcount;

drop view deptempcount;

