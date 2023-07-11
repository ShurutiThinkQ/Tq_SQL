select * from account;
select * from bank;
select * from transaction;

# Find the account details whose balance is greater than the balance of accno 78678
# Find the details of customer whose balance is greater tha n 50000
# Find the details of bank whose balance is greater tha n 50000
# Find the details of customer whose bank_name is SBI
# Find details of transactions of Lia
# Find the details of customer who has opened current account
# Find the account details of customer whose balance is greater than the average balance of all account

# Find the total balance of each customer and their bankName


select customer_id, sum(balance) from account group by customer_id;



#Display bank name , total balance of all customers in that bank of all banks in descending order of balance.

select b.bank_name, sum(a.balance) as balancesum
from bank b join customer c join account a
on b.bank_id= c.bank_id and c.customer_id=a.customer_id
group by b.bank_name
order by balancesum desc;



# Find the total balance of each customer
select customer_id, sum(balance) from account group by customer_id;








