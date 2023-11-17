library("datasets")

pacman::p_load(pacman, dplyr)

cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

data <- cars %>%
        dist %>%
        hclust

head(data)
plot(data)

rect.hclust(data, k = 2, border = "gray")
rect.hclust(data, k = 3, border = "blue")
rect.hclust(data, k = 4, border = "green4")
rect.hclust(data, k = 5, border = "darkred")

rm(list = ls())
detach("package:datasets", unload = T)
dev.off()