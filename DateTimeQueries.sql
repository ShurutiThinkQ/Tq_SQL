#addDate

select addDate(curdate(), interval 10 day);
select addDate(curdate(), interval 1 month);

select subDate(curdate(), interval 1 month);

select last_day(now());

#datediff:  diff in the form of number of days

select datediff(curdate(),"2023-09-12");

# show the first_name, id and experience of the employee in the company
select * from employees;

select first_name, employee_id,floor(datediff(curdate(),hire_date)/365) as Experience
from employees;

#Write a query to display first day of the month
select subdate(adddate(curdate(),interval 1 day),interval day(curdate()) day);

select subdate(adddate(curdate(),interval 1 month),interval day(curdate()) day);


select subdate(curdate(), interval 1 day);

#06/7/23- (06/7/23 -1)

select subdate(curdate(), subdate(curdate(), interval 1 day));

select subdate(curdate(),"05-07-2023");

select curdate();
  
 #Write a query to display last date of the month 
 
 #Write a query to get the first day of the current year.
 
# makedate(year, day of the year)

select year(curdate());
  
select makedate(year(curdate()),1);
  
select makedate(year(curdate()),40);

#from_Days : Make date from number of days

select from_Days(729910);

 #Write a query to display last day of the month 
 
 select last_day(curdate());
  
 # Calculate age from birth_date
 select floor((datediff(curdate(),"1998-08-12"))/365) AS age;  
  #Show the employee names who have been hired in june
  select first_name
  from employees
  where monthname(hire_date)="June";
  
   select first_name
  from employees
  where month(hire_date)=6;
 
 #Write a query to get the years in which more than 2 employees joined.
 select  year(hire_date) from employees;
 
 select count(employee_id) as Total,year(hire_date) as Hire
 from employees
 group by Hire
 having Total>2;
 
#Write a query to get first name of employees who joined in 1990.


#Write a query to get department name, manager name, and salary of the manager for all managers whose
# experience is more than 35 years.

#Write a query to get employee ID, last name, and date of first salary of the employees.


#Write a query to get first name, hire date and experience of the employees.
  
  






