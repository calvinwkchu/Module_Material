# Import the ggplot2 library
library(ggplot2)

crime <- read.csv(file="../Resources/crime_data.csv", fileEncoding = "UTF-8-BOM")

# Generate a scatter plot of violent crime rate versus year
ggplot(crime, aes(year, violent.crime.rate)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

# Perform a linear regression on violent crime rate versus year
reg <- lm(violent.crime.rate ~ year, data=crime)
summary(reg)

# Repeat plotting scatter and linear model for murder rate versus year
ggplot(crime, aes(year, murder.and.non.negligent.manslaughter.rate)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

reg <- lm(murder.and.non.negligent.manslaughter.rate ~ year, data=crime)
summary(reg)

# Repeat plotting scatter and linear model for aggravated assault versus year
ggplot(crime, aes(year, aggravated.assault.rate)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

reg <- lm(aggravated.assault.rate ~ year, data=crime)
summary(reg)
