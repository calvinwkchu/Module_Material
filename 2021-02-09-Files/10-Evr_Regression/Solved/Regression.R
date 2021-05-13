# Import the ggplot2 library
library(ggplot2)

# Generte a simple linear regression
lm(homevalue ~ finishedsquarefeet,zillow_oc_2017)

# Show detailed results of a linear regression model
summary(lm(homevalue ~ finishedsquarefeet,zillow_oc_2017))

# Store the results from the linear regression model
model <- lm(homevalue ~ finishedsquarefeet,zillow_oc_2017)

# Calculate the home values for y
yvals <- model$coefficients['finishedsquarefeet']*zillow_oc_2017$finishedsquarefeet + model$coefficients['(Intercept)']

# Create a scatter plot of the finished square feet by homevalue
plt <- ggplot(zillow_oc_2017,aes(x=finishedsquarefeet,y=homevalue))

# Generate the scatter plot with a line representing the linear model
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# Show detailed results of a multiple linear regression model
summary(lm(homevalue ~ finishedsquarefeet + bedroomcnt + bathroomcnt + lotsizesquarefeet + poolcnt + yearbuilt + taxvaluedollarcnt,zillow_oc_2017))