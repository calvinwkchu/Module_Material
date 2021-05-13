# Import the ggplot2 library
library(ggplot2)

# Create a scatter plot of finished square feet by home value
plt <- ggplot(zillow_oc_2017,aes(x=finishedsquarefeet,y=homevalue))
plt + geom_point()

# Calculate the Pearson Correlation Coefficient
cor(zillow_oc_2017["finishedsquarefeet"],zillow_oc_2017["homevalue"]) 

# Create a matrix calculating the correlation between multiple fields
home_matrix <- as.matrix(zillow_oc_2017[,c("finishedsquarefeet","taxvaluedollarcnt","homevalue")]) 
cor(home_matrix)

