library(datasets)

head(iris)

# Basic histograms
hist(iris$Petal.Width)
hist(iris$Petal.Length)

# Bistograms with options

# To show 3 graphs together
par(mfrow = c(3, 1))

# Showing 3 different graphs
# [iris$Species == "setosa"] and alike in the following examples are called selectors
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     breaks = 9,
     xlab = "",
     main = "Petal.Width for setosa",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     xlab = "",
     breaks = 9,
     main = "Peral.Width for versicolor",
     col = "blue")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     xlab = "",
     breaks = 9,
     main = "Petal.Width for Virginica",
     col = "purple")

par(mfrow = c(1, 1))
detach("package:datasets", unload = TRUE)
dev.off()