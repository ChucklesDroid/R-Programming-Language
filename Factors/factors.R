(x1 <- c(1:3))
(y <- c(1:9))

(df1 <- as.data.frame(cbind(x1, y)))
# (df1 <- cbind.data.frame(x1, y))
typeof(df1$x1)
str(df1)

# Making use of factor
# using as.factor()
(x2 <- as.factor(c(1:3)))
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2)

# defining existing variables as factor
# levels are used to define the order
df3 <- cbind.data.frame(x1, y)
df3$x1 <- factor(df3$x1, levels = c(1, 2, 3))
str(df3)

# defining labels for factor
df4 = cbind.data.frame(x1, y)
df4$x1 = factor(df4$x1, levels = c(1, 2, 3), labels = c("Macos", "Windows", "Linux"))
df4
str(df4)

# ordered factors and labels
df5 = cbind.data.frame(x1, y)
df5$x1 = ordered(df5$x1, levels = c(3, 1, 2), labels = c("No", "Maybe", "Yes"))
df5
str(df5)

# repeating the same df5 but with using factor() instead of order() and just using 'ordered' param
df6 = cbind.data.frame(x1, y)
df6$x1 = factor(df6$x1, levels = c(3, 1, 2), labels = c("No", "Maybe", "Yes"), ordered = T)
df6
str(df6)

rm(list = ls())