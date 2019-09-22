#Loading library and dataset
library(dslabs)

# Vectors - basic building blocks of dataframes, used to store data. 
# Each column of dataframe is a vector

# Create a vector with concatenate function c()
codes <- c(380, 124, 818)
codes
# Create character vector.
# Without quotes character will be taken as variable names
country <- c("italy", "canada", "egypt")

# Names of vectors

codes <- c(italy = 380, canada = 124, egypt = 818)
codes
# Class is still numeric
class(codes)
# But with names accessed using names() function
names(codes)

# Another way to declare vector with names
# Now quotes using quotes is same as before
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes

# Assign names using names function
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country
codes

# Sequences also create vetors
seq(1, 10)
seq(1, 10, 2)
1:10
class(1:10)

class(seq(1, 10, 0.5))

# Subsetting
codes[2]

# Accessing multiple enteries by using vector as index
codes[c(1,3)]

# Or by using sequence
codes[1:2]

# Using names single or multiple

codes["canada"]

codes[c("egypt","italy")]

# Vector Coercion
x <- c(1,"canada",3)
x
# 1 and 3 converted to character. R coerced data to character
class(x)
x <- 1:5
y <- as.character(x)
class(y)
y <- as.numeric(y)
class(y)
# NA introduced by coercionte
x <- c("1","b","3")
as.numeric(x)

# Sorting
data(murders)
# Sorting by murders
sort(murders$total)

# Get states sorted my murders
ind <- order(murders$total)
murders$state[ind]

# in a single line
murders$state[order(murders$total)]

# max
max(murders$total)

# which.max index of max
which.max(murders$total)

murders$state[which.max(murders$total)]

# Rank
x <- c(31, 4, 15, 92, 65)
rank(x)

# Recycling in case of length mismatch
x <- c(1,2,3)
y <- c(10, 20, 30, 40, 50, 60, 70)
x+y

# Vector Arthimetics
# Operations on vectors occur element wise
inches <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
inches * 2.54
inches - 69

murder_rate <- murders$total / murders$population * 100000
# State with highest murder rate
murders$state[order(murder_rate,decreasing = TRUE)]

# Indexing Vectors
index = murder_rate < 0.71

index = murder_rate <= 0.71
murders$state[index]
sum(index)

# Logical indexing
west <- murders$region == "West"
safe <- murder_rate <= 1
ind <- safe & west
murders$state[ind]

# Which used to get index of row matching condition
ind <- which(murders$state == "California")
murder_rate[ind]

# match unction tells us which indexes of a second vector 
# match each of the entries of a first vector:
ind <- match(c("New York", "Florida", "Texas"), murders$state)
ind

# %in% function used when If rather than an index we want a logical that tells us 
# whether or not each element of a first vector is in a second vector
c("Boston", "Dakota", "Washington") %in% murders$state
  
match(c("New York", "Florida", "Texas"), murders$state)
  
which(murders$state%in%c("New York", "Florida", "Texas"))