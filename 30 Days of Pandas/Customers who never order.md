# 183. Customers Who Never Order

## 📝 Problem Statement
 
### Table: `Customers`


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

 - id is the primary key (column with unique values) for this table.
 - Each row of this table indicates the ID and name of a customer.
 

### Table: `Orders`


| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

 - id is the primary key (column with unique values) for this table.
 - customerId is a foreign key (reference columns) of the ID from the Customers table.
 - Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

Write a solution to find all customers who never order anything.

Return the result table in any order.

---

## 📥 Example Input
Input: 
Products table:

| product_id  | low_fats | recyclable |
|-------------|----------|------------|
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |

Output: 

| product_id  |
|-------------|
| 1           |
| 3           |

Explanation: Only products 1 and 3 are both low fat and recyclable.




---

## 💡 Pandas Solution

```pandas

import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    return products.loc[(products['low_fats'] == 'Y') & (products['recyclable'] == 'Y'), ['product_id']]
