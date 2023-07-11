
# To create copy of the table 

create table bank_copy (select * from bank);
create table bank_copy1 (select * from bank);
# only for structure

create table bank_copy2 like bank;

drop table bank_copy;
drop table bank_copy1;

drop table bank_copy;
truncate table bank_copy1;

# add column
alter table customermaster
add column dob date
after contact;

# change column name

alter table customermaster
rename column dob to birth_date;

alter table customermaster
modify column birth_date int;

alter table customermaster
change column birth_date dateofbirth date;













