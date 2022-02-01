import pandas as py

ujian = py.read_csv("SkorUjian.csv")
print(ujian)

print(ujian["math score"].describe())

print(ujian.mean())
print (ujian.gender.unique())
print(ujian.gender.value_counts())