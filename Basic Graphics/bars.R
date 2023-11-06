library(datasets)

# ?mtcars
head(mtcars)

barplot(mtcars$cyl) #This produces bar graphs of cyl vs cars, since it contains info 
# of 32 cars therefore it will have 32 bars in the graph

cylinders <- table(mtcars$cyl)
barplot(mtcars$cyl)
plot(mtcars$cyl)

# Removing all the environment variables
rm(list = ls())

detach("package:dataset", uload = TRUE)
# dev.off()
# cat("\014")