#Nth highest and lowest salary

select distinct(salary) from employees;

select distinct(salary) from employees
order by salary desc;

select distinct(salary) from employees
order by salary desc limit 3;

#3rd highest

select min(salary) as ThirdHighestSalary
from (select distinct(salary) from employees
order by salary desc limit 3) as Highest;

#3rd Lowest

select distinct(salary) from employees
order by salary asc limit 3;

select max(salary) as ThirdLowest
from (select distinct(salary) from employees
order by salary asc limit 3) as Lowest;

#3rd highest

select distinct salary 
 from employees e1
 where 3=( select count(distinct(SALARY))
           from employees e2
           where e1.salary<= e2.salary);
           
 #3Lowest
 
 select distinct salary 
 from employees e1
 where 3=( select count(distinct(SALARY))
           from employees e2
           where e1.salary>=e2.salary);
           
  
  #3rd highest
  select distinct salary 
 from employees 
 order by salary desc
 limit 2,1; # skip 2 rows and print 1 row
 
 select distinct salary 
 from employees 
 order by salary desc
 limit 2,2;
 
           
           
           

