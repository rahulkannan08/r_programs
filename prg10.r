library(tm)
library(e1071)

review <- c("movie is good",
"bad movie",
"excellent film",
"boring story")

sentiment <- c("positive","negative","positive","negative")

data <- data.frame(review, sentiment)

corpus <- Corpus(VectorSource(data$review))

dtm <- DocumentTermMatrix(corpus)
dtm <- as.matrix(dtm)

dataset <- as.data.frame(dtm)
dataset$sentiment <- data$sentiment

model <- naiveBayes(sentiment ~ ., data = dataset)
pred <- predict(model, dataset)

result <- data.frame(
  Review = data$review,
  Predicted_Sentiment = pred
)

print(result)
