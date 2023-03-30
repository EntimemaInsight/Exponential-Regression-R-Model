# Exponential Regression Model for Revenue Growth
This project uses an exponential regression model to analyze the relationship between Previous Spending (independent variable) and Revenue Growth (dependent variable) for a specific data set.

## Background
Based on an initial analysis of the data, it appears that the relationship between Previous Spending and Revenue Growth is non-linear. Therefore, an exponential regression model was chosen as a potential model for the data.

## Model Description

The exponential regression model used in this project assumes that the relationship between the dependent variable (Revenue Growth) and the independent variable (Previous Spending) can be described by the following formula:

Revenue_Growth = a * exp(b * Previous_Spending)


where 

where a and b are parameters to be estimated from the data. The log transformation is used to linearize the model:

The log transformation is used to linearize the model:

log(Revenue_Growth) = log(a) + b * Previous_Spending

The regression coefficients estimated by the model are in the log scale, so we need to transform them back to the original scale by taking the exponent of the coefficients.
