# Loading library and dataset
library(dslabs)
data("murders")

# Some basic operations
a <- 2
class(a)
class(ls)
class(class)
class(murders)

# Structure of dataframe
str(murders)
# Head of dataframe
head(murders)
# Names of columns
names(murders)
# Class of single column
class(murders$population)
# Length of the single column vector
pop = murders$population
length(pop)

# Character Vector
class(murders$state)
# Logical Vector
z <- 3==2
class(z)

# Factor vector
class(murders$region)

# Unique values in factor
levels(murders$region)
# Number of levels
length(levels(murders$region))
# Rows in each level
table(murders$region)

# Another way of accessing a column
murders[["population"]]
identical(murders[["population"]],murders$population)

# Generate Sequence
s1 = seq(1,10)
s2 = 1:10
sum(s1)
sum(s2)
