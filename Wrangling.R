#Loading library and dataset
library(dslabs)
#install.packages("dplyr")
library(dplyr)
#Get data
data(murders)
head(murders)
# One line way to add new column in dataframe
murders = mutate(murders,rate = total/population*100000)
# Filtering
filter(murders,rate<=0.71)
new_table = select(murders,state,region,rate)
filter(new_table, rate<=0.71)
# piping
murders %>% select(state,region,rate) %>% filter(rate<=0.71)

# Creating dataframes
grades = data.frame(names = c("John", "Juan", "Jean", "Yao"), 
           exam_1 = c(95, 80, 90, 85), 
           exam_2 = c(90, 85, 85, 90),
           stringsAsFactors = FALSE)
class(grades$names)
# By deafault R creates string columns as factors
  