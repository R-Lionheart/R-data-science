library(tidyverse)

df <- head(iris)
print(df)

colnames(df)[1] <- "sepal_length"
colnames(df)[2] <- "sepal_width"
colnames(df)[3] <- "petal_length"
colnames(df)[4] <- "petal_width"
colnames(df)[5] <- "species"

colnames(df)[colnames(df) == "sepal_length"] <- "sepalLength"
colnames(df)[colnames(df) == "sepal_width"] <- "sepalWidth"
colnames(df)[colnames(df) == "petal_length"] <- "petalLength"
colnames(df)[colnames(df) == "petal_width"] <- "petalWidth"


df <- rename(df, "plantSpecies" = "species")


df <- data.frame(person = c("John_Doe", "Jane_Doe"))
df <- df %>% separate(person, c("first_name", "last_name"), "_")

students <- c("John", "Jane", "Joe", "Janet")
grades <- c(83, 97, 74, 27)
df <- data.frame(student = students, grade = grades)
df <- head(mtcars)
print(df)

df <- subset(df, select = c(mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear))

df <- subset(df, select = -c(gear))