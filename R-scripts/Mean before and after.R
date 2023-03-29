# Load the readxl package
library(readxl)

# Read the data from the Excel file
data <- read_excel("C:\\Users\\aleksandar.dimitrov\\Desktop\\R Tests\\Spain_Limit_increasing_202211.xlsx")

# Calculate the mean credit limit of the targeted customers before the campaign
before_mean <- mean(data$Limit)

# Calculate the mean credit limit of the targeted customers after the campaign
after_mean <- mean(data$Limit2)

# Calculate the change in average credit limit
change <- after_mean - before_mean

# Create a bar plot to visualize the change

library(ggplot2)

ggplot(df, aes(x = status, y = mean_credit_limit, fill = status)) + 
  geom_bar(stat = "identity") + 
  scale_fill_manual(values = c("blue", "orange")) +
  labs(title = "Change in Average Credit Limit", x = "Campaign Status", y = "Mean Credit Limit")


