directory <- "C:/Users/User/Desktop/Project/"
setwd("C:/Users/User/Desktop/Project/")

IC_data<- read.csv("ic data.csv")

str(IC_data)
summary(IC_data)
View(IC_data)

# correlation matrix
vars <- IC_data[, c("PFCE_growth",
                    "food_inflation",
                    "fuel_inflation",
                    "PCI_growth")]
cor(vars)
round(cor(vars),2)
corrplot(cor(vars), method="color")

# linear regression

model <- lm(PFCE_growth ~ food_inflation +
               fuel_inflation +
               PCI_growth +
               covid_dummy,IC_data)
summary(model)
# coefficient of covid dummy is now significant at 15% level 
durbinWatsonTest(model)

vif(model)

bptest(model)
plot(model)

coeftest(model,vcov=NeweyWest(model))
