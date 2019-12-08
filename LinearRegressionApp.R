rm(list=ls()) #this clears the globle environment
set.seed(19620808)
setwd("./Desktop/Spring2019AUI/Quanti")
baseball <- read.csv("MLBPitching.csv")
model1 <- lm(baseball$R.IP ~ baseball$SO.IP)

summary(model1)
mean(model1$residuals)
plot(model1$fitted.values, model1$residuals)
hist(model1$residuals)
plot(density(model1$residuals))

#---model 2
model2 <- lm(baseball$R.IP ~ baseball$HR.IP)
summary(model2)
mean(model2$residuals)
plot(model2$fitted.values, model2$residuals)
plot(density(model2$residuals))
#---model3
model3 <- lm(baseball$R.IP ~ baseball$SO.IP +  baseball$HR.IP)
summary(model3)
mean(model3$residuals)
plot(model3$fitted.values, model3$residuals)
plot(density(model3$residuals))
#---
model3 <- lm(baseball$R.IP ~ baseball$SO.IP +  baseball$HR.IP)
summary(model3)
mean(model3$residuals)
plot(model3$fitted.values, model3$residuals)
plot(density(model3$residuals))
#---
View(baseball)
cor(baseball$ERA, baseball$R.IP)