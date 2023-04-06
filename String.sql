# String functions

select length("java") from dual;

select concat("Rohit", " Khomane");

#check index

select instr("java", 'a');

#return substring(start, length)

select substr("hello", 3,4);

select substr("Programming", 3,4); # 4 characters from 3rd index

select substr("Programming", -3,2);

select length(concat("Rohit", " Khomane"));


select ascii('t');

select format("0.481","Percent");

select upper("java");

select lower("Program");

#repeat
select repeat("java",7);

# add @ gmail.com to all the employees

select * from employees;

update employees
set email = concat(email, "@gmail.com");

use bikedb;

select * from customer;

select if(gender like 'Female', concat("Mrs.", first_name),concat("Mr.",first_name))as firstname, last_name
from customer;


select  concat(if(gender like 'Female', concat("Mrs.", first_name),concat("Mr.",first_name)), " ",last_name) as 'Fullname'
from customer;

#Title case

select concat(upper(substring(first_name,1,1)), lower(substring(first_name,2, length(first_name)))) as TitleName
from customer;


# replace string

update customer 
set last_name= replace(last_name, "Gupta","Mittal");

select * from customer;

select first_Name, format(salary,"C") as 'Current Salary'
from employees;


# All the employees working in a deptid

select DEPARTMENT_ID, group_concat(FIRST_NAME," ") as EmployeeNames
from employees
group by DEPARTMENT_ID;

select DEPARTMENT_ID, group_concat(EMPLOYEE_ID," ") as EmployeeId
from employees
group by DEPARTMENT_ID;

#findinset

select find_in_set("Delhi","Delhi,Mumbai,Chennai");

select find_in_set("Bangalore","Delhi,Mumbai,Chennai");

select find_in_set("Mumbai","Delhi,Mumbai,Chennai");

select find_in_set("Den", group_concat(first_name))
from employees; # Gives the index at which it is present otherwise 0

select strcmp("Java","Python");

select strcmp("Python","Java");

select strcmp("Java","Java");




