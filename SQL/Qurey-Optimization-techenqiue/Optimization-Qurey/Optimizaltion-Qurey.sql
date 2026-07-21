-- use gfg;


-- Optimization Query

-- 1 Avoid unnecessary columns in select statement

select * 
from messy_indian_dataset;

-- avoid * thing statment and select only required columns

select name,city,purchase_amount 
from messy_indian_dataset;

-- This will reduce the amount of data transferred from disk to memory and improve query performance.

-- 2. Avoid using inappropriate  JOIN IN THE FUNCTION 

select  a.name , a.city
from messy_indian_dataset a 
inner join messy_indian_dataset b 
on a.id = b.id;

-- 3 Apporpiate  Data types for columns

-- Using VARCHAR for short descriptions
CREATE TABLE customer_correct (
    id INT,
    name VARCHAR(50),
    description VARCHAR(255)
);

-- Using TEXT for longer descriptions
CREATE TABLE customer_correct (
    id INT,
    name VARCHAR(50),
    description TEXT
);

-- 4 Query Execution Plan

explain select name,city,purchase_amount 
from messy_indian_dataset;

-- 5 Caching 

select sql_catch id ,name,city,purchase_amount
from messy_indian_dataset;

-- 6 Temporary Tables

create table if not exists temp_table as
(select name,city,purchase_amount
from messy_indian_dataset
where city = 'Delhi');

