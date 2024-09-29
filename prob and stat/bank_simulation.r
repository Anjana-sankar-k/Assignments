# Set the parameters
n <- 25  # Number of accounts sampled
p <- 0.75  # Probability of paying on time

# Generate the sequence of possible values of x (number of accounts paying on time)
x <- 0:n

# Calculate the binomial probabilities for each value of x
probabilities <- dbinom(x, size = n, prob = p)

# Create a bar plot for the binomial distribution
barplot(probabilities, names.arg = x, col = "skyblue",
        main = "Binomial Probability Distribution\nAccounts Paying on Time",
        xlab = "Number of Accounts Paying on Time",
        ylab = "Probability")

# Analyze the effect of changing n
n_values <- c(100, 150, 200)  # Different sample sizes
colors <- c("skyblue", "orange", "green")

# Plotting for different n values
plot(x, dbinom(x, size = n_values[1], prob = p), type = "o", col = colors[1],
     ylim = c(0, max(dbinom(x, size = max(n_values), prob = p))),
     main = "Binomial Distributions for Different Sample Sizes",
     xlab = "Number of Accounts Paying on Time", ylab = "Probability")
for (i in 2:length(n_values)) {
  points(x, dbinom(x, size = n_values[i], prob = p), type = "o", col = colors[i])
}
legend("topright", legend = paste("n =", n_values), col = colors, lty = 1, pch = 1)

# Summary of observations
cat("As the number of individuals (n) increases, the binomial distribution becomes more symmetric and concentrated around the mean.\n")
