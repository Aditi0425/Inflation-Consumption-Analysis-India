IC_data<- read.csv("ic data.csv")

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
 
durbinWatsonTest(model)
vif(model)
bptest(model)
plot(model)
