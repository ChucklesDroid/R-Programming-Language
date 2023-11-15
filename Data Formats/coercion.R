# Type-casting in R programming is called `coercion`

## Automatic Coercion
# Goes to least restrictive data type
(coerce1 <- c(1, "b", T)) #Coercion occurs to characters
typeof(coerce1)

## Coercing double to integer
(m <- 5)
typeof(m)
(n <- as.integer(5))
typeof(n)

## Coerce character to numeric
(a <- as.integer(c("1", "2", "3")))
typeof(a)

## Coerce matrix to data frame
(b <- as.data.frame(matrix(c(1:25), nrow = 5)))
is.data.frame(b)

rm(list = ls())