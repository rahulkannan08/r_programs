# Simple Time Series Analysis using Moving Average

# Sample data (monthly sales values)
sales <- c(120,135,150,160,170,180,175,190,200,210,220,230)

# Convert to time series object
sales_ts <- ts(sales, start=c(2023,1), frequency=12)

# Display the data
sales_ts

# Plot the original time series
plot(sales_ts,
     main="Monthly Sales Data",
     xlab="Month",
     ylab="Sales",
     col="blue",
     type="o")

# Calculate 3-period Moving Average
moving_avg <- filter(sales_ts, rep(1/3,3), sides=2)

# Plot moving average
lines(moving_avg, col="red", lwd=2)

# Display moving average values
moving_avg