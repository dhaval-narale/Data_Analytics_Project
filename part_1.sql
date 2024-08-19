show databases;

create database retailsalesdata;

use retailsalesdata;

create table Sales_Data_Transaction(
customer_id varchar(255),
trans_date datetime,
trans_amount int);


create table Sales_Data_Response(
customer_id varchar(255) primary key,
response int);

load data infile 'C:/Program Files/MySQL/MySQL Server 8.0/upload\Retail_Data_Transactions.csv'
into table Sales_Data_Transaction
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

select *from sales_data_transaction limit 10;


