import pandas as pd;
i = [1,2,2,2,3,5,5,6,7]
seri = pd.Series(i)
print(seri)

data = [
    [1000, 'steve', 89.78],
    [1000, 'steve', 89.78],
    [1000, 'steve', 89.78],
    ]
frame = pd.DataFrame(data, columns= ['umur', 'nama', 'tinggi'], index = [1,2,3])
print(frame)