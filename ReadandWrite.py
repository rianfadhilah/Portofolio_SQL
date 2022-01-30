import pandas as pd
ujian = pd.read_csv("SkorUjian.csv")
print(ujian)

row= ujian.shape
print(row)

print(ujian.head(10))
print (ujian.tail(1))

print(ujian.iloc[1:4, 2])
print (ujian.loc[1:4, ["gender"]])