# Given data
data <- c(200, 300, 400, 600, 1000)

# Min-max normalization
min_data <- min(data)
max_data <- max(data)

min_max_normalized <- (data - min_data) / (max_data - min_data)

# Print the min-max normalized values
cat("Min-Max Normalization (0 to 1):\n")
print(min_max_normalized)

# Z-score normalization
mean_data <- mean(data)
sd_data <- sd(data)

z_score_normalized <- (data - mean_data) / sd_data

# Print the z-score normalized values
cat("\nZ-score Normalization:\n")
print(z_score_normalized)

# Plotting the original data and normalized data
par(mfrow = c(1, 3))  # Divide the plot area into 1 row and 3 columns

# Plot 1: Original Data
plot(data, main = "Original Data", ylim = c(0, 1100), ylab = "Values")

# Plot 2: Min-Max Normalized Data
plot(min_max_normalized, main = "Min-Max Normalization (0 to 1)", ylim = c(0, 1), ylab = "Normalized Values")

# Plot 3: Z-score Normalized Data
plot(z_score_normalized, main = "Z-score Normalization", ylab = "Normalized Values")
