H<-c(7,12,28,3,41)
M<-c("MAR","APR","MAY","JUN","JULY")
barplot(H,names.arg=M, xlab = "MONTH",ylab = "REVENUE", col = "blue",main="Rvenue chart",border = "red")

chem<-c("AB1","AB2","AB3","AB4","AB5")
vol<-c(90,5,100,20,40)
pie(vol)

events1<-c(12,14,18,15,13)
events<-c(15,12,14,16,14)
plot(events1, type="o",col="red",xlab="month",ylab = "count",main = "event count chart")
lines(events,type="o", col="blue")
data<-rnorm(100,mean=0,sd=1)
num_bins<-10
histogram<-hist(data,breaks = num_bins)
plot(histogram)

data<-data.frame(stat1=rnorm(10,mean = 3,sd=1),
                 stat2=rnorm(10,mean = 4,sd=1),
                 stat3=rnorm(10,mean = 6,sd=0.5),
                 stat4=rnorm(10,mean = 3,sd=0.5))
boxplot(data)
