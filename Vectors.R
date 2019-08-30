# Loading library and dataset
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


