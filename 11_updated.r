# Barplot
barplot(c(7,12,28,3,41),
        names.arg=c("MAR","APR","MAY","JUN","JULY"),
        xlab="MONTH", ylab="REVENUE",
        col="blue", main="Revenue chart", border="red")

# Pie chart
pie(c(90,5,100,20,40),
    labels=c("AB1","AB2","AB3","AB4","AB5"))

# Line plot
plot(c(12,14,18,15,13), type="o", col="red",
     xlab="month", ylab="count", main="event count chart")
lines(c(15,12,14,16,14), type="o", col="blue")

# Histogram
hist(rnorm(100,0,1), breaks=10)

# Boxplot
boxplot(data.frame(
  stat1=rnorm(10,3,1),
  stat2=rnorm(10,4,1),
  stat3=rnorm(10,6,0.5),
  stat4=rnorm(10,3,0.5)
))