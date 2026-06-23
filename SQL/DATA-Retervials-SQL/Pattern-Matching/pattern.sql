-- Pattern Matching 

-- Like operator using Wildcard Character

-- using percentage 

-- sreaching which start with this  word

select *from products
where porductname like 'M%';

-- sreaching which end with this  word

select *from products
where porductname like '%M';

-- sreach word which contain 

select *from products
where porductname like '%ec%';

-- sreach with strating and ending word

select *from products
where porductname like 'F%e';


-- using underscore

-- find out the products which contain the 6 letter

select *from products
where productname like '______'




