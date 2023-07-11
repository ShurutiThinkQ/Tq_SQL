
#Triggers Assignment
#1. We cannot delete a customer if any of his account exists 
#> CustomerMaster : BeforeDelete if exists- account

#2. Acc. to transaction made increase/ decrease the balance of account
#> Transaction: AfterUpdate: Account:balance: accid

#3. We can open an account with the min balance of 1000
#> Account : balance>=1000

#4. Create a logtable to store any update made in the account and customer table
#>Customer: Before/AfterUpdate / AfterDelete
#>Account:  ||
