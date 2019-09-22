x <- murders$population / 10^6
y <- murders$total

plot(x, y)
hist(murders$rate)
boxplot(rate~region, data = murders)
