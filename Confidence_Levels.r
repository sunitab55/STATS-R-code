# 95% Confidence levels with a known SD of population is mean +- SD*1.96
# # Assign the sample mean to object "m"
m <- mean(samp)

# Assign the standard deviation to object "s"
s <- 8/sqrt(300)

# Calculate the upper confidence interval
m + s *1.96

# Calculate the lower confidence interval
m - s *1.96

# Confidence Levels being calculated with no known SD so calculate standard error
# Assign the sample mean to object "m"
m <- mean(rrage)

# Assign the sample standard error to object "s"
s <- sd(rrage)/sqrt(200)

# Calculate the upper 95% confidence interval
m - s * 1.9720

# Calculate the lower 95% confidence interval
m + s * 1.9720

# Make p the proportion of the sample with road rage 
len <- length(roadrage)
count <- 0
for (i in 1:200) {
    if (roadrage[i] == "yes") {
        count = count + 1
    }
}
p <- count/len

# Make p the proportion of the sample with road rage (easier version)
p <- 70 / 200
table(roadrage)

# Find the standard error of p
se <- sqrt(p * (1 - p)/200)

# Calculate the upper level of the confidence interval
p + 1.96 * se

# Calculate the lower level of the confidence interval
p - 1.96 * se

# Report the range of the 95% confidence interval
(p + 1.96 * se) - (p - 1.96 * se)
# Report the range of the 99% confidence interval
(p + 2.58 * se) - (p - 2.58 * se)
# Which has the widest range?
99
