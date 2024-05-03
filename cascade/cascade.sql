-- customers table structure:
create table customers(customerId bigint(12) primary key,
name varchar(20),
age int(3));

-- orders table structure:
create table orders(orderId bigint(12) primary key,
orderName varchar(20),
customerId bigint(20),
foreign key(customerId) references customers(customerId)
ON DELETE CASCADE);