install.packages("pacman")

pacman::p_load(pacman, httr, tidyr) # This not only loads the packages but if its not present then it also installs it
library(datasets) # Loads base package datasets

p_unload(all)
detach("package:datasets", unload = TRUE)
cat("\014")