library(datasets)

head(iris)

summary(iris$Sepal.Width)       #Quantitative Variable
summary(iris$Species)           #Categorical Variable
summary(iris)                   #Entire Data Frame

detach("package:datasets")