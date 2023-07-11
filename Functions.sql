#functions

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `max_of_num`(num1 int, num2 int) RETURNS int
    DETERMINISTIC
BEGIN
   if(num1>num2)
   then 
   return num1;
   else 
   return num2;
   end if;

END
*/

select max_of_num(7,4);

select addnumbers(23.5,56.7);

select powerfunc(2,3);





