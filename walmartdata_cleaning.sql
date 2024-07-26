-- Data Cleaning
select *
from walmartdata;

-- 1. Remove duplicates 
-- 2. Standardize the data
-- 3. Null Values or blank values
-- 4. remove Any Columns

create table walmartdata_staging
like walmartdata;

select * 
from walmartdata_staging;

insert walmartdata_staging
select *
from walmartdata;

select *,
row_number() over()
from walmartdata_staging;