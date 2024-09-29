# Set parameters
lambda <- 25  # Average number of calls per day
days <- 365   # Number of days in a year

# Simulate the number of calls received each day for 365 days
set.seed(123)  # For reproducibility
daily_calls <- rpois(days, lambda)

# Print the first few simulated values
print(head(daily_calls))

# Create a histogram of the simulated daily calls
hist(daily_calls, breaks = 10, col = "lightblue", 
     main = "Histogram of Daily Calls Received Over a Year",
     xlab = "Number of Calls per Day",
     ylab = "Frequency (Number of Days)")

# Add a vertical line for the mean
abline(v = mean(daily_calls), col = "red", lwd = 2)

# Interpretation: Brief Summary
cat("The histogram shows the distribution of the number of calls received each day over a year. The mean number of calls is", mean(daily_calls), 
    "with most days receiving between", min(daily_calls), "and", max(daily_calls), "calls. The distribution is centered around 25 calls per day, 
    which aligns with the expected average.")
