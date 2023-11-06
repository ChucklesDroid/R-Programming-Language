library(datasets)

head(iris)

plot(iris$Petal.Width)                  #Quantitative Variable
plot(iris$Species)                      #Categorical Variable(automatically detects) # nolint
plot(iris$Species, iris$Petal.Width)    #Box plot
plot(iris)                              #Plot entire data frame

plot(cos, 0, 2*pi)                      #Cosine curve
plot(exp, 0, 5)                         #Exponential curve
plot(dnorm, -5, 5)                      #Distribution Normal curve

plot(iris$Petal.Length, iris$Petal.Width,
    col = "#cc0000",
    pch = 19,
    main = "Scatter Plot",
    xlab = "Petal Length",
    ylab = "Petal Width")

plot(dnorm, -5, +5,
    col = "#cc0000",
    lwd = 5,
    main = "Standard Normal Distribution",
    xlab = "z-scores",
    ylab = "Density")

detach("package:datasets", unload = TRUE)
dev.off()
cat("\014")