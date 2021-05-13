hair <- read.csv(file="../Resources/hair.csv")

ggplot(hair,aes(x=HairColour,y=Pain)) + geom_boxplot() 

summary(aov(Pain ~ HairColour, data=hair))