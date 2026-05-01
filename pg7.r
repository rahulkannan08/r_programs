covid_data <- read.csv("C:/Users/rahul/OneDrive/Desktop/R_programs/covid_data.csv", header = TRUE)

covid_data$Symptoms <- factor(covid_data$Symptoms)
covid_data$Affected <- factor(covid_data$Affected)

model <- glm(Affected ~ Age + Temperature + Symptoms, data = covid_data, family = binomial)
predict_covid_status <- function(age, temperature, symptoms) {
  new_data <- data.frame(Age = age, Temperature = temperature, Symptoms = factor(symptoms, levels = levels(covid_data$Symptoms)))
  prediction <- predict(model, newdata = new_data, type = "response")
  ifelse(prediction > 0.5, "Affected by COVID-19", "Not affected by COVID-19")
}
cat("Please enter the details to check COVID-19 affected status:\n")

age <- as.numeric(readline(prompt = "Age: "))
temperature <- as.numeric(readline(prompt = "Temperature: "))
symptoms <- readline(prompt = "Symptoms: ")

if (is.na(age) | is.na(temperature) | symptoms == "") {
  cat("Please enter valid input.\n")
} else {
  prediction <- predict_covid_status(age, temperature, symptoms)
  cat("Prediction:", prediction, "\n")
}
