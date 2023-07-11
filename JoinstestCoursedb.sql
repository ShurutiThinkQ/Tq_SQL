#Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name)

select e.FIRST_NAME,e.LAST_NAME, m.EMPLOYEE_ID,m.LAST_NAME
from employees e join employees m
on e.MANAGER_ID=m.EMPLOYEE_ID;

# Find the names of employees working as manager
select distinct(m.FIRST_NAME)
from employees e join employees m
on e.MANAGER_ID= m.EMPLOYEE_ID;


select * from employees;

select distinct(MANAGER_ID)
from employees;

#self join

# Find the names of employees whose salary is greater than Hunold
select e1.FIRST_NAME,e1.LAST_NAME,e1.salary
from employees e1 join employees e2
on e1.SALARY>e2.SALARY and e2.LAST_NAME="Hunold";


# Find the names of employees whose salary is same as Vargas


select e1.FIRST_NAME, e1.LAST_NAME,e1.SALARY
from employees e1 join employees e2
on e1.SALARY=e2.SALARY and e2.LAST_NAME="Vargas";

#Find the names of employees who were hired after Urman
select e1.FIRST_NAME, e1.LAST_NAME,e1.HIRE_DATE
from employees e1 join employees e2
on e1.HIRE_DATE>e2.HIRE_DATE and e2.LAST_NAME="Urman";

# Find the manager firstname, lastname and salary of each departmentname

select d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.FIRST_NAME,e.LAST_NAME,e.SALARY
from employees e join departments d
on d.MANAGER_ID= e.EMPLOYEE_ID;

# Find the total employees working in a department

select d.DEPARTMENT_ID, d.DEPARTMENT_NAME, count(e.EMPLOYEE_ID) as Total
from employees e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID
group by d.DEPARTMENT_id
order by Total desc;

select d.DEPARTMENT_NAME, count(e.EMPLOYEE_ID) as Total
from employees e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME
order by Total desc;


# Find the maximum salary given in each department

select d.DEPARTMENT_NAME, max(SALARY) as Total
from employees e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME
order by Total desc;


select * from departments;





