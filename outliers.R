plot(mtcars$mpg)

data <- c(1,4,7,9,2,6,3,99,4,2,7,8)
plot(data)

boxplot(mtcars$mpg)
boxplot(data)

hist(mtcars$mpg)
hist(data)

plot(density(mtcars$mpg))
plot(density(data))

## Statistically
sd <- sd(data)
print(sd)

mean <- mean(data)
print(mean)

extremity <- abs(data - mean) / sd
print(extremity)
extremity > 3
which(extremity >3)

## Ditch those outliers
manually_cleaned <- data[data != 99]
print(manually_cleaned)
