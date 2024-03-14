## List of included datasets for practice
## Practice or use these for reprexes
data()

## Handling/identifying NA or blank values
blanks <- c("John", "Jane", "")
nas <- c(NA, "Jane", "Joe")

print(blanks)
print(nas)
is.na(nas)

only_nas <- nas[is.na(nas)]
print(only_nas)

## Removing NAs
students <- c("John", "Jane", "Joe")
scores <- c(100, 80, NA)
df <- data.frame(student = students, score = scores)

print(df)
df <- na.omit(df)
print(df)

## Value imputation using central tendencies (mean, median)
employees <- c("John", "Jane", "Joe", "Janet")
hours_spent <- c(12, 14, NA, 9)
df <- data.frame(employee = employees, hours_spent = hours_spent)

print(df)

## Replace the missing value iwth the average of the rest of the employees'
mean_value <- mean(df$hours_spent[!is.na(df$hours_spent)])
print(mean_value)
df$hours_spent[is.na(df$hours_spent)] <- mean_value
print(df)

# RESET DATAFRAME
df$hours_spent <- hours_spent

# Set missing values to median
median_value <- median(df$hours_spent[!is.na(df$hours_spent)])
print(median_value)

df$hours_spent[is.na(df$hours_spent)] <- median_value
print(df)

## Linear regression
y <- c(10, 8, NA, 9, 4, NA)
x <- c(8, 6, 9, 7, 2, 12)
df <- data.frame(y = y, x = x)

print(df)
plot(df)

model <- lm(y ~ x)
summary(model)

## What is the predict() function?
imputed <- predict(model, newdata = list(x = df$x[is.na(df$y)])) 
df$y[is.na(df$y)] <- imputed
print(df)
