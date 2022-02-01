import pandas as py

ujian = py.read_csv("SkorUjian.csv")
ujian.rename(
    columns ={
        "math score" : "skor MTK",
        "reading score" : "Skor membaca"
    }, inplace =True
)

print (ujian)