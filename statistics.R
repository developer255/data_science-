
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# Find Mean.
result <- mean(x)
print(result)


# Create the vector.
x <- c(5,7,4,8,6)
# Find the median.
median.result <- median(x)
print(median.result)
#median =6

# Create the vector.
x <- c(5,8,4,9)
# Find the median.
median.result <- median(x)
print(median.result)
#median =6.5


#mode
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("h","hit","they","a","a")
# Calculate the mode using the user function.
result <- getmode(charv)
print(result)

######______________________________________________________________________
#Python Statistics

import numpy
speed = [12,7,3,4.2,18,2,54,-21,8,-5]
x = numpy.mean(speed)
print(x)
-------------------
  import numpy
speed = [5,7,4,8,6]
x = numpy.median(speed)
print(x)

#Mode
#The Mode value is the value that appears the most number of times:
#The SciPy module has a method for this.
#Use the SciPy mode() method to find the number that appears the most:
#from scipy import stats
speed = [99,86,87,88,111,86,103,87,94,78,77,85,86]
x = stats.mode(speed)
print(x)