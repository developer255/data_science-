
#1.Create the data frame

emp <- data.frame(
  emp_id = c(1:5),
  emp_name = c("patel","jesse","owen","janet","micheal"),
  salary=c(4000,5000,8000,9000,5000),
  start_date=as.Date(c("2020-01-01","2012-06-06","2021-05-07","2022-04-03","2020-07-06"))
)
# Print the data frame.
print(emp)


#2.The Structure of the Data Frame
#The structure of the data frame can be seen by using str() function

emp <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23","2014-11-15", "2014-05-11","2015-03-27"))
  )

# Print the data frame.
str(emp)


#3.Extract Data from Data Frame
#Extract specific column from a data frame using column name.

emp <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23","2014-11-15", "2014-05-11","2015-03-27"))
)

# Extract Specific columns.
result <- data.frame(emp$emp_name,emp$salary)
print(result)


#4.Extract the first two rows and then all columns
# Create the data frame.
emp <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27"))
)
# Extract first two rows.
result <- emp[1:2,]
print(result)


#5.Extract 3rd and 5th row with 2nd and 4th column
# Create the data frame.
emp <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27"))
)
# Extract 3rd and 5th row with 2nd and 4th column.
result <- emp[c(3,5),c(2,4)]
print(result)






Expand Data Frame
A data frame can be expanded by adding columns and rows.
Add Column
Just add the column vector using a new column name.
# Create the data frame.
emp<- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27"))
)
# Add the "dept" coulmn.
emp$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp
print(v)
Add Row
To add more rows permanently to an existing data frame, bring in the new rows in the same
structure as the existing data frame and use the rbind() function.
# Create the first data frame.
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  dept = c("IT","Operations","IT","HR","Finance"),
  stringsAsFactors = FALSE
)
# Create the second data frame
emp.newdata <- data.frame(
  emp_id = c (6:8),
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8),
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)
# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)