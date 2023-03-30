# Exponential Regression Model for Revenue Growth
This project uses an exponential regression model to analyze the relationship between Previous Spending (independent variable) and Revenue Growth (dependent variable) for a specific data set.

## Background
Based on an initial analysis of the data, it appears that the relationship between Previous Spending and Revenue Growth is non-linear. Therefore, an exponential regression model was chosen as a potential model for the data.

## Model Description
 The exponential regression model assumes that the relationship between the dependent variable (Revenue_Growth) and the independent variable (Previous_Spending) is of the form:

\begin{equation}
\text{y} = a \cdot e^{b \cdot \text{x}}
\end{equation}

where 

Revenue_Growth is represented by 'y'\
Previous_Spending is represented by 'x'\
'a' and 'b' are where a and b are parameters to be estimated from the data.\

The log transformation is used to linearize the model:

\begin{equation}
\log(x) = \log(a) + b \cdot x
\end{equation}

The regression coefficients estimated by the model are in the log scale, so we need to transform them back to the original scale by taking the exponent of the coefficients.
