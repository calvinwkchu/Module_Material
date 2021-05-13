# Import the ggplot2 library
library(ggplot2)

wine.url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"
wine <- read.csv(wine.url)

colnames(wine) <- c('Type', 'Alcohol', 'Malic', 'Ash', 
                    'Alcalinity', 'Magnesium', 'Phenols', 
                    'Flavanoids', 'Nonflavanoids',
                    'Proanthocyanins', 'Color', 'Hue', 
                    'Dilution', 'Proline')

ggplot(wine, aes(x=Malic, y=Flavanoids)) + geom_point()

cor(wine$Malic, wine$Flavanoids)
# Correlation coefficient is -0.41, a weak inverse correlation

ggplot(wine, aes(x=Alcohol, y=Color)) + geom_point()

cor(wine$Alcohol, wine$Color)
# Correlation coefficient is 0.55, a weak correlation

cor(wine)