data(women)
women
str(women)
cov(women$height, women$weight) #69: which show positive relationship between height and weight
cor(women$height, women$weight)
#0.995 : which shows Strong and Positive relationship betw height & weight
#0.995^2 also equal R^2 value in this case (Simple Linear Regression)
?lm
plot(x=women$height, y=women$weight)
abline(lm(weight ~ height, data=women), col='red')
names(women) #x- IV, y -DV
fit1 = lm(weight ~ height, data=women)
fit1
summary(fit1) #coefficients
coef(fit1)
#p values for b0 & b1 are significant as it is < 0.05pvalue1 = 1.71e-09 < 0.05
#pvalue2 = 1.09e-14 < 0.05R2
(summary(fit1))$r.squared #0.991
(summary(fit1))$adj.r.squared #0.9903
#99% of variation in weight is explained by HeightGood Linear Model for Prediction


#FStats : p value
(summary(fit1))$fstatistic #pvalue : 1.09e-14 < 0.05 : Model exists
#There is at least 1 IV which explains variation in Y (DV)Prediction : for height = 65, 66
(new1 = data.frame(height=c(65,66)))
?frame
?data
predict(fit1, newdata = new1, type='response')
?predict
#136.7333 140.1833