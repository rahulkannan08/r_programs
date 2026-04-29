data(mtcars)
c1 <- cor(mtcars$mpg,mtcars$wt)
print(paste(c1))
plot(mtcars$wt,mtcars$mpg,main = "14",xlab = "Weight",ylab = "Miles")
