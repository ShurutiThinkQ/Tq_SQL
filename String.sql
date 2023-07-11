#String queries

select length("Welcome") as Length;

select concat("Amey","@thinkqu.com");

#check index

select instr("Java","a") ;

#substring

select substr("Welcome",-3,2);
#substr(string, startindex, length)

select ascii('a');
select upper("java");
select lower("java");

select reverse("Hello");

select repeat("Hello ",5);

select replace ("Java","a","b");

# update @gmail.com to every email
update employees
set email= concat(email,"@gmail.com");

update employees
set email= replace(email,"gmail","yahoo");

# Add title acc to gender

alter table employees 
add column gender varchar(10);

select concat(if(gender like "M", concat("Mr.", first_name), concat("Mrs.",first_name)), " ",last_name) as FullName
from employees;


select if(gender like "M", concat("Mr.", first_name), concat("Mrs.",first_name)) from employees;

# Title case

select concat(upper(substr(first_name,1,1)),lower(substr(first_name,2,length(first_name)))) from employees;

update employees
set email= lower(email);

# group concat
# All the employees working in a deptid

select DEPARTMENT_ID,count(EMPLOYEE_ID) as Total
from employees
group by DEPARTMENT_ID;


select DEPARTMENT_ID, group_concat(EMPLOYEE_ID," ") as EmployeesIds
from employees
group by DEPARTMENT_ID;

select DEPARTMENT_ID, group_concat(First_name," ") as EmployeeNames
from employees
group by DEPARTMENT_ID;













