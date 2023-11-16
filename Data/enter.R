# Colon operator
(x1 <- 0:10)    #Ascending Order
(x2 <- 10:0)    #Descending Order

# Seq operator
(x3 <- seq(10)) #Default goes from 1 to 10
(x4 <- seq(30, 50, 5))  #from, to, by parameters
(x5 <- seq(10, 0))

#Entering multiple values with c
(x6 <- c(14, 32, 66, 43))

#Entering value at run time using scan method
# Hit return after every input
# Hit return twice to stop entering data
x7 <- scan()

# Repeating variables
(x8 <- rep(T, 7))

# Repeating set
(x9 <- rep(c(T, F), 3))

# Repeating items in set
(x10 <- rep(c(5, 3), each = 3)) #each param makes every element in set to be repeated

rm(list = ls())