#Indexes in MySQl

show index from purchase;

show index from customer;

alter table customer
add index (mobile_no);

create index name_idx
on model(model_name);

drop index name_idx  on model;