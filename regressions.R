# You can calculate each of these categories separately
summary(mtcars$mpg)

# Categorial values
levels(iris$Species)
table(iris$Species)

# Regressions make generalizations and predictions about data

# Linear models/linear regression
head(faithful)
lm <- lm(faithful$eruptions ~ faithful$waiting)
summary(lm)

# Call: Shows the function call used to generate the linear model, 
# including the formula and the dataset used.

# Residuals: Provides a summary of the residuals, 
# which are the differences between observed and predicted values.
# It typically includes minimum, 1st Quartile, Median, 3rd Quartile, Max values.

# Coefficients: Displays the estimated coefficients for each predictor in the model,
# including the intercept. For each coefficient, the summary provides:
  
#  Estimate: The estimated value of the coefficient.
#  Std. Error: The standard error of the estimate, indicating the precision of the estimate.
#  t value: The t-statistic, which is the coefficient divided by its standard error.
#  Pr(>|t|): The p-value associated with the t-statistic, testing the null hypothesis that the coefficient is equal to zero (i.e., it has no effect).
#  Significance codes: Often included at the bottom of the coefficients table, indicating the significance levels of the p-values with symbols (e.g., ***, **, *, .) next to the p-values.

# Residual standard error: An estimate of the standard deviation of the residuals, 
# providing a measure of the quality of the fit. 
# It's calculated over df degrees of freedom, where df represents the degrees of freedom
# residual.

# Multiple R-squared: Indicates the proportion of the variance in the dependent 
# variable that is predictable from the independent variable(s). 
# A higher R-squared value indicates a better fit.

# Adjusted R-squared: Adjusted for the number of predictors in the model, 
# providing a more accurate measure of model quality when you have multiple predictors.

# F-statistic: A test statistic for a joint hypothesis test that all 
# regression coefficients are equal to zero (i.e., the model has no explanatory power).

# p-value for the F-statistic: Assesses the significance of the F-statistic, testing the null hypothesis that all the regression coefficients are equal to zero.

# Multiple regressions
head(mtcars)
lm <- lm(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb,
         data = mtcars)
summary(lm)

## Logistic regression
glm <- glm(am ~ cyl + hp + wt, family = binomial, data = mtcars)
summary(glm)
