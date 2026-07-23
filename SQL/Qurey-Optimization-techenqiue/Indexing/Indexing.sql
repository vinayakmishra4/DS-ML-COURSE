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


