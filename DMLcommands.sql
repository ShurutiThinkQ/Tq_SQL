
# Find account number where balance is null
select * from account where balance is null;

select * from account where balance is not null;

# Find the customer whose name start with s

select * from customermaster where cname like 's%';

# Find the customer whose name start with s and end with a and has 4 characters in between

select * from customermaster where cname like 's____a';

# show all the branches of bank in Delhi and Chennai

select * from bank where state in("Delhi","Chennai");




