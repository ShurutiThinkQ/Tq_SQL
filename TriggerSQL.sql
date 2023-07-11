#Before Insert (Employees)

/*CREATE DEFINER=`root`@`localhost` TRIGGER `employees_BEFORE_INSERT` BEFORE INSERT ON `employees` FOR EACH ROW BEGIN
if new.salary<10000
then
signal sqlstate '45000'
set message_text="Salary must be greater than 10000";
end if;

END
*/

#Not allowed
insert into employees (employee_id, first_name, last_name, salary)values
(302,"Shuruti","Singhal",8000);

insert into employees (employee_id, first_name, last_name, salary)values
(302,"Shuruti","Singhal",18000);

select * from employees;

# add EmployeeCount

alter table departments
add empcount int;

# update empcount : Correlated subquery
update departments d
set d.empcount=(select count(*)
               from employees e
               where e.DEPARTMENT_ID= d.DEPARTMENT_ID);
    
#After Insert: Employees    
/*
CREATE DEFINER=`root`@`localhost` TRIGGER `employees_AFTER_INSERT` AFTER INSERT ON `employees` FOR EACH ROW BEGIN
update departments
set empcount=empcount+1
where department_id= new.department_id;

END
*/              
 insert into employees (employee_id, first_name, last_name, salary, department_id)values
(305,"Rushikesh","Jadhav",18000,20);

delete from employees
where EMPLOYEE_ID=305;
               
 create table logtable
 (
 logid int primary key auto_increment,
 actiontask varchar(100),
 actiondoneon date,
 details varchar(200)
);

alter table logtable
rename to emplogtable;

/*CREATE DEFINER=`root`@`localhost` TRIGGER `employees_BEFORE_UPDATE` BEFORE UPDATE ON `employees` FOR EACH ROW BEGIN
insert into emplogtable(actiontask,actiondoneon,details)
values("Employee before update",now(),concat(old.first_name," ",old.last_name," ",old.phone_number," ",old.salary," ",old.manager_id," ",old.department_id));

END
*/

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `employees_AFTER_UPDATE` AFTER UPDATE ON `employees` FOR EACH ROW BEGIN
insert into emplogtable(actiontask,actiondoneon,details)
values("Employee after update",now(),concat(new.first_name," ",new.last_name," ",new.phone_number," ",new.salary," ",new.manager_id," ",new.department_id));

END
*/

update employees
set salary=25000
where employee_id=101;

##Employees: After Delete

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `employees_AFTER_DELETE` AFTER DELETE ON `employees` FOR EACH ROW BEGIN

insert into emplogtable(actiontask,actiondoneon,details)
values(concat("Delete:",old.employee_id),now(),concat(old.first_name," ",old.last_name," ",old.phone_number," ",old.salary," ",old.manager_id," ",old.department_id));
END
*/

delete from employees
where employee_id=112;

#Departments: Before Delete

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `departments_BEFORE_DELETE` BEFORE DELETE ON `departments` FOR EACH ROW BEGIN

if exists(select department_id from employees where department_id= old.department_id)
then
signal sqlstate '45670'
set message_text="Cannot delete department as employee exists in it";
end if; 

END
*/
               
delete from departments
where DEPARTMENT_ID=60;

delete from departments
where DEPARTMENT_ID=60;

#Departments After delete

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `departments_AFTER_DELETE` AFTER DELETE ON `departments` FOR EACH ROW BEGIN
insert into emplogtable(actiontask,actiondoneon,details)
values(concat("Delete dept:",old.department_id),now(),old.department_name);



END
*/

delete from departments
where DEPARTMENT_ID=270;


