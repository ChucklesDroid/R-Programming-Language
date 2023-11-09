library(datasets)

head(mtcars)

# First checking univariate variables
hist(mtcars$wt)
hist(mtcars$mpg)

# Basic multivariate variables
plot(mtcars$wt, mtcars$mpg)

# Scatter plot with options
plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     xlab = "mtcars$wt",
     ylab = "mtcars$mpg",
     main = "Multi variate variables",
     col = "blue",
     cex = 1.75)

par(cex = 1)
detach("package:datasets", unload = TRUE)
dev.off()