data(iris)
print(iris)
iris_subset <-iris[, 1:2]
set.seed(123)
km1 <-kmeans(iris_subset, centers = 3)
plot(iris_subset[, 1],iris_subset[, 2], col = km1$cluster,pch=16,xlab = "sepal length",ylab ="sepal width",main = "k-means clustering results")
legend("topright",legend=paste("cluster",1:3),pch=16,col=1:3,title="cluster")
