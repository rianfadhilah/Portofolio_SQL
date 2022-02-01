import pandas as py

data = py.read_csv("https://raw.githubusercontent.com/dphi-official/First_ML_Model/master/titanic.csv")
#print(data.isnull().sum())

#data_age_before = data.Age.mean()
#data.Age.fillna(data_age_before,inplace = True)
#print(data_age_before)
#print(data.Age.mean())

print(data.Embarked.value_counts())
