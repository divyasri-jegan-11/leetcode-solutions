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

## 📥 Example Input:

Input: 
Customers table:

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

Orders table:

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

Output: 

| Customers |
|-----------|
| Henry     |
| Max       |




---

## 💡 Pandas Solution

```pandas

import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    no_orders = customers[~customers['id'].isin(orders['customerId'])]
    return no_orders[['name']].rename(columns={'name': 'Customers'})
