Program - Reading CSV file in Python
import pandas
# reading the CSV file
csvFile = pandas.read_csv('')
# displaying the contents of the CSV file
print(csvFile)
-------------------------
  
  import pandas as pd
df = pd.read_csv('data.csv')
print(df)
-----------------------
  
  Writing a CSV file in python
import csv
# field names
fields = ['id','Name', 'salary', 'start_date', 'dept']
# data rows of csv file
rows = [ ['34','Nikhil', '2000', '2/03/2001', 'operations'],
         ['32','Sanchit', '2300', '2/05/2023', 'Finance'],
         ['21','Sahil', '1400', '3/02/2021', 'operations']]
# name of csv file
filename = "/content/drive/MyDrive/Test/data.csv"
# writing to csv file
with open(filename, 'w') as csvfile:
  # creating a csv writer object
  csvwriter = csv.writer(csvfile)
# writing the fields
csvwriter.writerow(fields)
# writing the data rows
csvwriter.writerows(rows)
------------------------------------
  
  Writing a json file in python
# Python program to write JSON
# to a file
import json
# Data to be written
dictionary = {
  "name": "peter",
  "rollno": 56,
  "cgpa": 8.6,
  "phonenumber": "9976770500"
}
with open("/content/drive/MyDrive/
Colab Notebooks/dataset/Object/sample.json", "w") as outfile:
  json.dump(dictionary, outfile)
----------------------
  
  Reading a json file in python
import json
# Opening JSON file
with open('/content/drive/MyDrive/Colab Notebooks/dataset/Object/sample.json', 'r') as openfile:
  # Reading from json file
  json_object = json.load(openfile)
print(json_object)
print(type(json_object))
------------------------
  
  import pandas as pd
df = pd.read_json('/content/drive/MyDrive/Colab Notebooks/dataset/Object/object1.json')
print(df.to_string())
--------------------
  
  Creating a data frame in python using dictionaries
Dictionaries are used to store data values in key:value pairs.
# creating data frame in python
import pandas as pd
data = {
  "id": [1, 2, 3],
  "marks": [50, 40, 45]
}
#load data into a DataFrame object:
df = pd.DataFrame(data)
print(df)
#Pandas use the loc attribute to return one or more specified
row(s)
#refer to the row index:
print(df.loc[0])
#refer to the row index:
print(df.loc[[0, 1]])
-----------------
  
  Creating a data frame in python using List
A Python list is an ordered and changeable collection of data objects. Unlike an array, which can contain
objects of a single type, a list can contain a mixture of objects.
import pandas as pd
data = [['Alekhya',10],['ammu',12],['ale',13]]
df = pd.DataFrame(data,columns=['Name','Age'],dtype=float)
print (df)
--------------------------------
  
  Creating a data frame in python using List & Dictionaries
import pandas as pd
#Create a Dictionary of series
d = {'Name':pd.Series(['Tom','James','Ricky','Vin',
                       'Steve','Smith','Jack']),
  'Age':pd.Series([25,26,25,23,30,29,23]),
  'Rating':pd.Series([4.23,3.24,3.98,2.56,3.20,4.6,3.8])}
#Create a DataFrame
df = pd.DataFrame(d)
print("Our data series is:")
print(df)
-----------------------