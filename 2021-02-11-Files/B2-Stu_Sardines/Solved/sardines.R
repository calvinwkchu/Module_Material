sardines <- read.csv(file="../Resources/sardines.csv")

# Calculate the population mean for Sardine Vertebrae in Alaska
population1 = subset(sardines, location == 1)
mean(population1[['vertebrae']])

# Calculate the population mean for Sardine Vertebrae in San Diego
population2 = subset(sardines, location == 6)
mean(population2[['vertebrae']])

# Calculate Independent (Two Sample) T-Test
t.test(population1[['vertebrae']], population2[['vertebrae']])
