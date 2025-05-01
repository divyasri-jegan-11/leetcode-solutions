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
