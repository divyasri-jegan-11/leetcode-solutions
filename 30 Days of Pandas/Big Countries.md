
# 595. Big Countries

## 📝 Problem Statement
 
 ### Table: `World`


| Column Name | Type    |
|-------------|---------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.

A country is big if:

it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.
---

## 📥 Example Input
Input:
student_data:
[
  [1, 15],
  [2, 11],
  [3, 11],
  [4, 20]
]
Output:

| student_id | age |
|------------|-----|
| 1          | 15  |
| 2          | 11  |
| 3          | 11  |
| 4          | 20  |

Explanation:
 - A DataFrame was created on top of student_data, with two columns named student_id and age.

---

## 💡 Pandas Solution

```sql



import pandas as pd

def createDataframe(student_data: List[List[int]]) -> pd.DataFrame:
    col = ['student_id','age']
    df= pd.DataFrame(student_data, columns= col)
    return df
data = [[1,15],
        [2,11],
        [3,11],
        [4,20]]
        
df = createDataframe(data)
print(df)
