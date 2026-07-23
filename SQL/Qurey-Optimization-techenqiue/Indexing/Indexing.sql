use gfg;

-- INDEXING 

-- SIMPLE INDEXING

create index idx_city on messy_indian_dataset(city);

-- Query using the index
select name, city, purchase_amount 
from messy_indian_dataset 
where city = 'Mumbai';

-- COMPOSITE INDEXING

-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a composite index on the 
create index idx_city on messy_indian_dataset(city, gender);

-- Query using the composite index
select name, city, purchase_amount 
from messy_indian_dataset 
where city = 'Mumbai';


-- Unique INDEXING

-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a unique index on the  co lumn
create unique index idx_city on messy_indian_dataset(id);

-- Query using the unique index
select name, city, purchase_amount 
from messy_indian_dataset 
where city = 'Mumbai';

-- FULLTEXT INDEXING

-- Drop existing index if it exists
drop index idx_city on messy_indian_dataset;

-- Create a full-text index on the  and  columns
create fulltext index idx_city on messy_indian_dataset(name, email);

-- Query using the full-text index for full-text search
select name, city, purchase_amount 
from messy_indian_dataset 
where match(name, email) against('Rajesh');



