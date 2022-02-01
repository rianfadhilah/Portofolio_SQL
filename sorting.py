import pandas as py
ujian = py.read_csv("SkorUjian.csv")
print(ujian.sort_values(by = 'math score' , ascending = False).head())

print(ujian["math score"].sort_values(ascending = False)[:5])