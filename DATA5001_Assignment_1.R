library(ggplot2)
library(tidyverse)

# Creating a scatter plot using ggplot2
x = rnorm(100)
y = rnorm(100)

data = data.frame(x = x, y = y)
ggplot(data, aes(x = x, y = y)) + geom_point() +
  labs(x = "x-axis", y = "y-axis", title = "plot of x VS y")


# Creating a contour plot using ggplot2
# I couldn't use the data given in the lab to create ggplot2 contour plots
# because an error the f was not the same dimension as x and y
# I will create another one using the faithfuld dataset from ggplot
x <- seq(-pi, pi, length = 50)
y <- x
data = data.frame(x = x, y = y)
data = data %>% mutate(f = x * y)

ggplot(data, aes(x, y, z = f)) + geom_contour()
ggplot(faithfuld, aes(waiting, eruptions, z = density)) + geom_contour()

# Colored contour plot
ggplot(faithfuld, aes(waiting, eruptions, z = density)) + geom_contour_filled()

# Plotting using ggplot and Auto data
Auto = read.csv('Auto.csv', na.strings = "?", stringsAsFactors = T)

# Convert "cylinders" column to a qualitative variable
Auto$cylinders = as.factor(Auto$cylinders)

# Boxplot using ggplot and Auto data
ggplot(Auto, aes(Auto$cylinders, Auto$mpg)) + geom_boxplot(colour = "Blue") + 
  labs(x = "Cylinders", y = "MPG", title = "Cylinders VS MPG")

# Histogram using ggplot and Auto data
ggplot(Auto, aes(Auto$mpg))  + geom_histogram(fill = "lightblue",colour = "Blue")

#import GGally
library(plotly)
library(GGally)


# Pair plot using GGgally and Auto data
ggpairs(Auto[, c("mpg", "displacement", "weight", "horsepower")])


