Problem Statement:
You are given a table Products with the following schema:

Column Name	Type
product_id	int
product_name	varchar
category	varchar
recyclable	enum ('Yes', 'No')
low_fats	enum ('Yes', 'No')
Write an SQL query to find the IDs and names of all products that are both recyclable ('Yes') and low-fat ('Yes').

Return the result table in any order.

Solution:
```bash
SELECT product_id, product_name
FROM Products
WHERE recyclable = 'Yes' AND low_fats = 'Yes';
```bash

Explanation:
- The WHERE clause filters products where:
  - recyclable = 'Yes'
  - low_fats = 'Yes'
- Only products satisfying both conditions will be selected.
