 
 #Write a query to find the names (first_name, last_name) of the employees who are not supervisors.
 
 select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.LAST_NAME from employees e1
 where exists(select * from employees e2
               where e2.MANAGER_ID= e1.EMPLOYEE_ID);
               
  select e1.EMPLOYEE_ID,e1.FIRST_NAME, e1.LAST_NAME from employees e1
  where not exists(select * from employees e2
               where e2.MANAGER_ID= e1.EMPLOYEE_ID);          
               
               