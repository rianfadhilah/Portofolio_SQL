import pandas as py

data = py.read_csv("https://raw.githubusercontent.com/dphi-official/Datasets/master/Standard_Metropolitan_Areas_Data-data.csv")

#print (data.shape)
#print(data.info())

#print(data.loc[0:11,"crime_rate"])

#print(data.loc[[1, 3, 5, 7, 9,13], ['land_area', 'work_force', 'income', 'region', 'crime_rate']])
#banyakData = data[data.region == 2]
#print(banyakData.count )

#print(data.mean())

#print(data.region.unique())
#print(data.describe())

#sample_data = data[data.region ==3] 
#print(sample_data.describe())

#print(data.region.value_counts())

sorted_data = data.sort_values(by = "crime_rate" , ascending = False).head()
print(sorted_data)