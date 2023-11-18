library("datasets")
pacman::p_load(pacman, dplyr)

cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

# 2 different ways to represent data
pc <- prcomp(cars, 
            center = T,
            scale = T)

pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am + gear + carb,
            data = cars,
            center = T,
            scale = T)

# Data Analysis
pc  #Prints standard deviation and rotation values

predict(pc) %>% round(2)    #Generic method to predict and then rounds it to nearest 2 digits
biplot(pc)

rm(list = ls())
detach("package:datasets", unload = T)
p_unload(pacman, dplyr)