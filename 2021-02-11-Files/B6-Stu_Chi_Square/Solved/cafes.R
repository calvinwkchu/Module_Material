observed <- c(1500, 1350, 1600, 1550)

chisq.test(observed)
# X-squared = 23.333, df = 3, p-value = 3.441e-05
# Since the chi-square value of 23.3 at a confidence level of 95% exceeds the critical value of 7.8, we conclude that 
# the differences seen in the number of visits per cafe are statistically significant. The results of the chisq.test
# function confirm this, with a very low p-value of 3.441e-05