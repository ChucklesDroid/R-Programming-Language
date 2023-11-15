# Data Types

# Numeric Data formats
# Double precision by default when creating numeric type variables
cat("Double\n")
n <- 2
n           #displays the variable to the R console
typeof(n)   #returns the data type of variable

m <- 2.5
m
typeof(m)

# Character Data Formats
cat("Character\n")
o <- "c"    #Both character nad string are stored as character 
o           #Also ' and  " both have same meaning in R
typeof(o)

p <- "string"
p
typeof(p)

#Logical data formats
cat("Logical\n")
q <- F      #These are basically boolean types
q           #Both short form(F) and long form(FALSE) are valid
typeof(q)

r <- TRUE
r
typeof(r)

# DATA STRUCTURES

#Vector
# Vector is the most basic object in R
# Its 1 dimensional
# Its members must be of same type
cat("Vector\n")
a <- c(1:24)    #Assigns numerics from 1 to 24
a               #By surrounding the initiation statement by '()', we dont need to provide this seperate statement
typeof(a)
is.vector(a)

(b <- c(1, 2, 3, 4))  #Assigns a 1D matrix of values '1, 2, 3, 4'
typeof(b)
is.vector(b)

(c <- c(T, F, F, F, T))
typeof(c)
is.vector(c)

#Matrix
# Its 2 dimensional
# Total number of rows = Total number of columns
# All its members are of same type
# By default the value provided is filled by column
# we can change the default behavior and assign byrow=T
cat("Matrix\n")
(d <- matrix(c(1, 2, 3, 4), nrow = 2))
typeof(d)
is.matrix(d)

(e <- matrix(c( 1:25 ), nrow = 5, byrow = T))
is.matrix(e)

#Array
#Its same as matrix but is for 3 and 3+ dimensions
cat("Array\n")
(f <- array(c(1:125), dim = c(5, 5, 5)))    #Creates a 3D array
is.array(f)

#Data Frames
# So data frames can be created by `data.frames`, `cbind` and `rbind`(for the latter 2 we have to make use of as.`data.frame`) # nolint
# Data Frames are the closest thing to spreadsheets in R
# These are the most widely utilized data structure in R 
# Here we can combine vectors of same length
# `typeof()` method returns 'list'
cat("Data Frames\n")
v_numeric <- c(1, 2, 3, 4)
v_character <- c("a", "b", "c", "d")
v_logical <- c(T, F, T, T)
(g <- cbind(v_numeric, v_character, v_logical))
is.data.frame(g)
#Made a matrix of 1 data type
#As seen in the output of the above that it coerces all the data types to most basic of all, in this case Character # nolint
#But if we want to preserve the data types of these data frames we make use of `as.data.frame` method # nolint

(h <- as.data.frame(rbind(v_numeric, v_character, v_logical)))
is.data.frame(h)
#creates a data frame with 3 different data types
#Rbind just combines the three vectors along the row instead of column as in cbind # nolint

(i <- as.data.frame(cbind(v_numeric, v_character, v_logical)))

#Lists
# You can combine anything inside lists and they need not be of same size 
# It is often compared to russian dolls in the way they can house many different data types inside it
# Although its not easy to manipulate this data structure
# Also its members need not have nrow = ncol
ol1 = c("a", "b", "c")
ol2 = c(1, 2, 3, 4)
ol3 = c(T, F, T, F, F)
(list1 <- list(ol1, ol2, ol3))
(list2 <- list(ol1, ol2, ol3))  #List within lists