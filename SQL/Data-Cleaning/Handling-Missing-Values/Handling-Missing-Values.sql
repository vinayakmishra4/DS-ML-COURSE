use gfg;

-- Handling Missing Values 

-- create the table

DROP TABLE IF EXISTS messy_indian_dataset;

CREATE TABLE IF NOT EXISTS messy_indian_dataset (
    id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE
);

-- add values in table

INSERT INTO messy_indian_dataset
(id, name, age, gender, email, phone_number, city, state, purchase_amount, purchase_date)
VALUES
(1, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(2, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', NULL, '2023-02-15'),
(3, 'Amit Kumar', 35, 'Male', 'amit@example.com', '9876543212', 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(4, 'Ritu Singh', 28, 'Female', NULL, '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(5, 'Rajesh Patel', 30, 'Male', 'rajesh@example.com', '9876543210', 'Mumbai', 'Maharashtra', 1000.50, '2023-01-05'),
(6, 'Priya Sharma', 25, 'Female', 'priya@example.com', '9876543211', 'Delhi', 'Delhi', 800.00, '2023-02-15'),
(7, 'Amit Kumar', NULL, 'Male', 'amit@example.com', NULL, 'Bangalore', 'Karnataka', 750.25, '2023-03-25'),
(8, 'Ritu Singh', 28, 'Female', 'ritu@example.com', '9876543213', 'Kolkata', 'West Bengal', 1200.75, '2023-04-10'),
(9, 'Ankit Tiwari', 32, 'Male', 'ankit@example.com', '9876543214', 'Lucknow', 'Uttar Pradesh', 900.00, '2023-05-20'),
(10, 'Swati Gupta', 27, 'Female', 'swati@example.com', '9876543215', 'Jaipur', 'Rajasthan', 1500.00, NULL),
(11, 'Vikram Joshi', 29, 'Male', 'vikram@example.com', '9876543216', 'Pune', 'Maharashtra', 1250.00, '2023-06-12'),
(12, 'Neha Verma', 24, 'Female', 'neha@example.com', '9876543217', 'Bhopal', 'Madhya Pradesh', 950.75, '2023-07-01'),
(13, 'Arjun Mehta', 40, 'Male', 'arjun@example.com', '9876543218', 'Ahmedabad', 'Gujarat', 2100.00, '2023-07-15'),
(14, 'Pooja Nair', 31, 'Female', 'pooja@example.com', '9876543219', 'Kochi', 'Kerala', 1800.50, '2023-08-10'),
(15, 'Rohan Das', 26, 'Male', 'rohan@example.com', '9876543220', 'Bhubaneswar', 'Odisha', NULL, '2023-08-20'),
(16, 'Sneha Kapoor', 33, 'Female', 'sneha@example.com', '9876543221', 'Chandigarh', 'Chandigarh', 1450.25, '2023-09-05'),
(17, 'Manish Yadav', NULL, 'Male', 'manish@example.com', '9876543222', 'Patna', 'Bihar', 1100.00, '2023-09-18'),
(18, 'Kiran Rao', 29, 'Female', NULL, '9876543223', 'Hyderabad', 'Telangana', 1750.00, '2023-10-01'),
(19, 'Rahul Mishra', 36, 'Male', 'rahul@example.com', NULL, 'Varanasi', 'Uttar Pradesh', 980.00, '2023-10-15'),
(20, 'Divya Iyer', 27, 'Female', 'divya@example.com', '9876543225', 'Chennai', 'Tamil Nadu', 1325.50, NULL),
(21, 'Suresh Reddy', 45, 'Male', 'suresh@example.com', '9876543226', 'Hyderabad', 'Telangana', 2500.00, '2023-11-01'),
(22, 'Kavita Sharma', 38, 'Female', 'kavita@example.com', '9876543227', 'Delhi', 'Delhi', 1750.75, '2023-11-10'),
(23, 'Imran Khan', 34, 'Male', 'imran@example.com', '9876543228', 'Bhopal', 'Madhya Pradesh', 890.00, '2023-11-20'),
(24, 'Ayesha Siddiqui', 30, 'Female', 'ayesha@example.com', '9876543229', 'Lucknow', 'Uttar Pradesh', 1450.00, '2023-12-05'),
(25, 'Vikram Joshi', 29, 'Male', 'vikram@example.com', '9876543216', 'Pune', 'Maharashtra', 1250.00, '2023-06-12'),
(26, 'Anjali Gupta', 23, 'Female', 'anjali@example.com', '9876543230', 'Kanpur', 'Uttar Pradesh', 670.00, '2023-12-15'),
(27, 'Deepak Singh', 41, 'Male', 'deepak@example.com', '9876543231', 'Indore', 'Madhya Pradesh', 1980.00, '2024-01-05'),
(28, 'Meena Kumari', 35, 'Female', 'meena@example.com', NULL, 'Ranchi', 'Jharkhand', 840.50, '2024-01-18'),
(29, 'Nitin Agarwal', 28, 'Male', NULL, '9876543233', 'Noida', 'Uttar Pradesh', 2200.00, '2024-02-02'),
(30, 'Rashmi Jain', 31, 'Female', 'rashmi@example.com', '9876543234', 'Surat', 'Gujarat', 1560.25, '2024-02-15'),
(31, 'Aditya Roy', 37, 'Male', 'aditya@example.com', '9876543235', 'Kolkata', 'West Bengal', 1300.00, '2024-03-01'),
(32, 'Shreya Sen', 26, 'Female', 'shreya@example.com', '9876543236', 'Kolkata', 'West Bengal', 920.75, '2024-03-10'),
(33, 'Ravi Verma', 39, 'Male', 'ravi@example.com', '9876543237', 'Nagpur', 'Maharashtra', 1755.00, '2024-03-20'),
(34, 'Komal Arora', 27, 'Female', 'komal@example.com', '9876543238', 'Ludhiana', 'Punjab', 1110.00, '2024-04-05'),
(35, 'Sanjay Malhotra', 44, 'Male', 'sanjay@example.com', '9876543239', 'Amritsar', 'Punjab', NULL, '2024-04-15'),
(36, 'Pallavi Desai', 32, 'Female', 'pallavi@example.com', '9876543240', 'Vadodara', 'Gujarat', 1430.60, '2024-04-25'),
(37, 'Rakesh Sharma', 30, 'Male', 'rakesh@example.com', '9876543241', 'Jaipur', 'Rajasthan', 870.00, '2024-05-05'),
(38, 'Nisha Kapoor', NULL, 'Female', 'nisha@example.com', '9876543242', 'Shimla', 'Himachal Pradesh', 1299.99, '2024-05-15'),
(39, 'Harish Nair', 42, 'Male', 'harish@example.com', '9876543243', 'Thiruvananthapuram', 'Kerala', 1995.00, '2024-06-01'),
(40, 'Preeti Chawla', 29, 'Female', 'preeti@example.com', '9876543244', 'Gurgaon', 'Haryana', 1050.00, '2024-06-10'),
(41, 'Abhishek Pandey', 29, 'Male', 'abhishek@example.com', '9876543245', 'Prayagraj', 'Uttar Pradesh', 1150.50, '2024-06-20'),
(42, 'Sonal Gupta', 26, 'Female', 'sonal@example.com', '9876543246', 'Agra', 'Uttar Pradesh', 980.00, '2024-07-01'),
(43, 'Harpreet Singh', 38, 'Male', 'harpreet@example.com', '9876543247', 'Jalandhar', 'Punjab', 1750.25, '2024-07-10'),
(44, 'Ananya Bose', 31, 'Female', 'ananya@example.com', NULL, 'Kolkata', 'West Bengal', 1325.75, '2024-07-18'),
(45, 'Karthik Raman', 35, 'Male', 'karthik@example.com', '9876543249', 'Coimbatore', 'Tamil Nadu', NULL, '2024-08-01'),
(46, 'Jyoti Mishra', NULL, 'Female', 'jyoti@example.com', '9876543250', 'Varanasi', 'Uttar Pradesh', 890.00, '2024-08-12'),
(47, 'Abhishek Pandey', 29, 'Male', 'abhishek@example.com', '9876543245', 'Prayagraj', 'Uttar Pradesh', 1150.50, '2024-06-20'),
(48, 'Farhan Ali', 33, 'Male', NULL, '9876543252', 'Srinagar', 'Jammu and Kashmir', 2450.00, '2024-08-25'),
(49, 'Madhuri Patil', 27, 'Female', 'madhuri@example.com', '9876543253', 'Nashik', 'Maharashtra', 1580.40, NULL),
(50, 'Rohit Choudhary', 41, 'Male', 'rohit@example.com', '9876543254', 'Udaipur', 'Rajasthan', 2100.75, '2024-09-05');

-- finding values the missing values

SELECT *
FROM messy_indian_dataset
WHERE name IS NULL OR TRIM(name) = ''
   OR age IS NULL
   OR gender IS NULL OR TRIM(gender) = ''
   OR email IS NULL OR TRIM(email) = ''
   OR city IS NULL OR TRIM(city) = ''
   OR phone_number IS NULL OR TRIM(phone_number) = ''
   OR state IS NULL OR TRIM(state) = ''
   OR purchase_amount IS NULL
   OR purchase_date IS NULL;

-- Rows without missing values

SELECT *
FROM messy_indian_dataset
WHERE name IS NOT NULL AND TRIM(name) <> ''
  AND age IS NOT NULL
  AND gender IS NOT NULL AND TRIM(gender) <> ''
  AND email IS NOT NULL AND TRIM(email) <> ''
  AND city IS NOT NULL AND TRIM(city) <> ''
  AND phone_number IS NOT NULL AND TRIM(phone_number) <> ''
  AND state IS NOT NULL AND TRIM(state) <> ''
  AND purchase_amount IS NOT NULL
  AND purchase_date IS NOT NULL;

-- Saving the cleaned data into a new table

CREATE TABLE IF NOT EXISTS cleaned_indian_dataset AS
SELECT *
FROM messy_indian_dataset
WHERE name IS NOT NULL AND TRIM(name) <> ''
  AND age IS NOT NULL
  AND gender IS NOT NULL AND TRIM(gender) <> ''
  AND email IS NOT NULL AND TRIM(email) <> ''
  AND city IS NOT NULL AND TRIM(city) <> ''
  AND phone_number IS NOT NULL AND TRIM(phone_number) <> ''
  AND state IS NOT NULL AND TRIM(state) <> ''
  AND purchase_amount IS NOT NULL
  AND purchase_date IS NOT NULL;

--- Impute the missing values mean of age

update messy_indian_dataset 
set age = (select avg(age) from messy_indian_dataset where age is not null)
where age is null;

-- Impute the missing values varchar values with 'Unknown'

update messy_indian_dataset
set name = 'Unknown'
where name is null or trim(name) = '';
set gender = 'Unknown'
where gender is null or trim(gender) = '';
set email = 'Unknown'
where email is null or trim(email) = '';
set city = 'Unknown'
where city is null or trim(city) = '';
set phone_number = 'Unknown'
where phone_number is null or trim(phone_number) = '';
set state = 'Unknown'
where state is null or trim(state) = '';

-- Impute the missing value of date with the current date

update messy_indian_dataset
set purchase_date = current_date
where purchase_date is null;

-- Impute the missing value of purchase_amount with the mean of purchase_amount

update messy_indian_dataset
set purchase_amount = (select avg(purchase_amount) from messy_indian_dataset where purchase_amount is not null)
where purchase_amount is null;

