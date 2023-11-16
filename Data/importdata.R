# Using rio package method import
pacman::p_load(pacman, rio)

rio_csv <- import("/home/aakarsh-gram/Softwares/R-Programming-Language/Data/mbb.csv")
rio_xlsx <- import("/home/aakarsh-gram/Softwares/R-Programming-Language/Data/mbb.xlsx")
# Tab delimited text file
rio_txt <- import("/home/aakarsh-gram/Softwares/R-Programming-Language/Data/mbb.txt")

View(rio_csv)
View(rio_xlsx)
View(rio_txt)

# Using built-in methods
csv <- read.csv("/home/aakarsh-gram/Softwares/R-Programming-Language/Data/mbb.csv", 
    header = T)
View(csv)

txt <- read.table("/home/aakarsh-gram/Softwares/R-Programming-Language/Data/mbb.txt", 
    header = T,
    sep = "\t")
View(txt)
head(txt)

rm(list = ls())