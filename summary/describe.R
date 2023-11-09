library(datasets)

pacman::p_load(pacman, psych)
# p_help(psych, web = F)

describe(iris$Sepal.Length)     #Quantitative Variable
describe(iris)                  #Entire Data Frame

p_unload(psych)
detach("package:datasets", uload = TRUE)