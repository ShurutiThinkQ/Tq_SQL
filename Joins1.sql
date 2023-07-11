#Joins

#Inner Join

select * from item;

select i.itemName, i.cost,s.firstName,s.phoneNumber,s.supid
from item i join supplier s
on i.supid= s.supid;


# Total cost of all items supplied by asupplier

select s.firstName,s.phoneNumber,s.supid, sum(i.cost)
from item i join supplier s
on i.supid= s.supid
group by s.supid;

select * from item;

select i.itemName, min(i.cost) as MinimumCost
from item i join supplier s
on i.supid= s.supid
group by i.itemName;

select s.firstName,s.phoneNumber,s.supid, min(i.cost)
from item i   join supplier s
on i.supid= s.supid
group by s.supid;

select * 
from item i join supplier s
on i.supid=s.supid;

select * 
from item i join supplier s
using(supid);


select * 
from item  natural join supplier ;










