library(datasets)

head(iris)

# Selecting specific values
hist(iris$Sepal.Length[iris$Sepal.Length < 5.2])

# Selecting specific categories against density instead of Frequencies
hist(iris$Sepal.Length[iris$Species == "setosa"],
    freq = F) # nolint

# Multiple Selectors
hist(iris$Sepal.Length[iris$Species == "setosa" &
    iris$Sepal.Width < 3.5])

# Creating sub samples in case same data is being utilised 
i.setosa <- iris$Sepal.Length[iris$Sepal.Length < 5.2 &
                                iris$Species == "setosa"]
hist(i.setosa)
summary(i.setosa)
head(i.setosa)