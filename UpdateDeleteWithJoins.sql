#update with join

#update salary of employees by 20% who are working in IT department

update employees e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID
set e.SALARY= e.SALARY+(0.2*e.SALARY)
where d.DEPARTMENT_NAME="IT";

update employees 
set SALARY= SALARY+(0.2*SALARY)
where DEPARTMENT_ID=60;


#show lastName,salary of employees working in IT department

select e.LAST_NAME, e.salary,d.DEPARTMENT_NAME
from employees e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID and d.DEPARTMENT_NAME="IT";

#Increase the price of model by 10% with excellent rating

select m.model_name,m.cost,f.rating
from model m join purchase p join feedback_rating f
on p.model_id= m.model_id and p.rating_id=f.rating_id and f.rating="Excellent";

update model m join purchase p join feedback_rating f
on p.model_id= m.model_id and p.rating_id=f.rating_id 
set m.cost=m.cost+(0.1*m.cost)
where f.rating="Excellent";

# Debit the balance of customer by 2% if they are not senior citizen(Senior Citizen: age>=60)
#voting age :  age>=18
# age<18 : cannot vote

select cm.cname,a.balance, cm.age
from customermaster cm join account a
on cm.customer_id= a.customer_id
where cm.age<60;

update customermaster cm join account a
on cm.customer_id= a.customer_id
set a.balance= a.balance-(0.02*a.balance)
where cm.age<60;

#Delete with Joins
#delete
#from employee
#where.......

#delete targettable
#from  join  
#on......
#where

#delete all the employees working in HR department

create table employees1 (select * from employees);

select e.LAST_NAME
from employees1 e join departments d
on e.DEPARTMENT_ID= d.DEPARTMENT_ID and d.DEPARTMENT_NAME="IT";

delete e
from employees1 e join departments d 
on e.DEPARTMENT_ID= d.DEPARTMENT_ID and d.DEPARTMENT_NAME="IT";

# delete the model which has complaints
create table model1 (select * from model);

delete m
from model1 m join purchase p join feedback_rating f
on m.model_id=p.model_id and p.rating_id=f.rating_id and f.rating="Complaint";

#delete account in SBI bank

#increase the balance of customer by 10%  who have account in CBI











