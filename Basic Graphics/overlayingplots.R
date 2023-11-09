library(datasets)

head(lynx)

hist(lynx)

hist(lynx,
     breaks = 14,
     freq = FALSE,
     col = "thistle1",
     xlab = "Number of Lynx trapped",
     main = "Histogram of annual canadian lynx trappings 1821-1934")

curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      lwd = 2,
      col = "thistle4",
      add = TRUE)

lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

rug(lynx, lwd = 2, col = "grey")

detach("package:datasets", unload = TRUE)
dev.off()