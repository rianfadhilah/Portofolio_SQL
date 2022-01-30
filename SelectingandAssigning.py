import pandas as pd
ujian = pd.read_csv("SkorUjian.csv")

print(ujian.gender)
print (ujian["lunch"])

print(ujian[ujian.lunch == "standard"])

ujian.gender = 'laki'
print (ujian)