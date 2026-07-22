use gfg;

-- Create the table


-- Range partitioning based on purchase_date

DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    


-- List Partitions 

-- Creating a list-partitioned table by city

DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE,
    city_code INT GENERATED ALWAYS AS (
        CASE
            WHEN city = 'Mumbai' THEN 1
            WHEN city = 'Delhi' THEN 2
            WHEN city = 'Bangalore' THEN 3
            WHEN city IN ('Kolkata', 'Chennai', 'Hyderabad', 'Pune') THEN 4
            ELSE NULL
        END
    ) STORED
)
PARTITION BY LIST (city_code) (
    PARTITION p_mumbai VALUES IN (1),
    PARTITION p_delhi VALUES IN (2),
    PARTITION p_bangalore VALUES IN (3),
    PARTITION p_other VALUES IN (4)
);

-- Hashing Partitioning

-- Creating a hash-partitioned table by id

DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE
)
PARTITION BY HASH(id) PARTITIONS 4;

-- Subpartitioning

-- Creating a range-partitioned table with hash subpartitioning

DROP TABLE IF EXISTS partitioned_dataset;
CREATE TABLE partitioned_dataset (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    purchase_amount DECIMAL(10, 2),
    purchase_date DATE
)
PARTITION BY RANGE (YEAR(purchase_date))
SUBPARTITION BY HASH(id) SUBPARTITIONS 4 (
    PARTITION p0 VALUES LESS THAN (2020),
    PARTITION p1 VALUES LESS THAN (2021),
    PARTITION p2 VALUES LESS THAN (2022),
    PARTITION p3 VALUES LESS THAN (2023),
    PARTITION p4 VALUES LESS THAN (2024)
);