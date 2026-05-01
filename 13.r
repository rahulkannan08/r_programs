library(ggplot2)

set.seed(123)

x <- rnorm(100)
y <- 2 * x + rnorm(100)

data <- data.frame(x, y)

model <- lm(y ~ x, data = data) # what is ~ ? formula interface

ggplot(data, aes(x = x, y = y)) + # what is aes ? aesthetics
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "namathan")




par(mfrow = c(3,1))

plot(model,which = 1)
plot(model,which= 4)
plot(model,which= 5)