# Load required libraries
library(readxl)
library(ggplot2)

# Load and prepare data
data <- read_excel("C:\\Users\\aleksandar.dimitrov\\Desktop\\R Tests\\Spain_Limit_Increasing_202211.xlsx", sheet = "Actual")

# Build exponential regression model
model <- lm(log(Revenue_Growth) ~ Previous_Spending, data = data)

# Transform coefficients back to the original scale
model$coefficients[1] <- exp(model$coefficients[1])

# Print model summary
summary(model)

# Plot the regression line
ggplot(data, aes(x = Previous_Spending, y = Revenue_Growth)) +
  geom_point() +
  stat_smooth(method = "lm", formula = y ~ exp(x * coef(model)[2]) * coef(model)[1], se = FALSE) +
  labs(x = "Previous_Spending", y = "Revenue Growth", title = "Exponential Regression Model of Revenue Growth and Previous Spending") 
