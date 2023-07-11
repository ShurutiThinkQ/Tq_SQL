# Number of employees in a department_id
select department_id, count(employee_id) as Total 
from employees
group by department_id;


# Average salary dispursed in each department_id
select department_id, avg(salary) as Average
from employees
group by department_id;

# Average salary dispursed in each department_id in desc order
select department_id, avg(salary) as Average
from employees
group by department_id
order by Average desc;


#Max salary in each department_id
select department_id, max(salary) as Maximum
from employees
group by department_id;

#Total location in each  country in asc order
select country_id, count(location_id) as TotalLocations
from locations
group by country_id
order by TotalLocations asc;

# Number of employees in each job_id
select job_id ,count(employee_id) as Total
from employees
group by job_id;

# Number of employees in each job_id whose salary is greater than 7000
select job_id ,count(employee_id) as Total
from employees
where salary>7000
group by job_id;

# Number of employees in each job_id where employees are greater than 1

select job_id ,count(employee_id) as Total
from employees
group by job_id
having Total>1;

