
# display the current date
select curdate(); # yyyy-mm-dd

select now(); # yyyy-MM-dd hh:mm:ss

select month(curdate());

select monthname(curdate());

select dayofmonth(curdate());

select dayname(curdate());

select dayofweek(curdate());

select dayofyear(curdate());

select current_time();

#Date Format

select date_format(curdate(),"%d-%m-%y ");

select date_format(now(),"%d-%m-%y %h:%i:%s ");

select date_format(curdate(),"%D-%M-%Y ");

select date_format(curdate(),"%W ,%D-%M-%Y ");









