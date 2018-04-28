?mtcars
data(mtcars)
str(mtcars)
fit1 = lm( mpg ~ cyl , data = mtcars)
fit1
(cyl1 = summary(fit1)$r.squared)

fit2 = lm( mpg ~ disp , data = mtcars)
fit2
(disp1 = summary(fit2)$r.squared)

fit3 = lm( mpg ~ hp , data = mtcars)
fit3
(hp1 = summary(fit3)$r.squared)

fit4 = lm( mpg ~ drat , data = mtcars)
fit4
(drat1 = summary(fit4)$r.squared)

fit5 = lm( mpg ~ wt , data = mtcars)
fit5
(wt1 = summary(fit5)$r.squared)

fit6 = lm( mpg ~ qsec , data = mtcars)
fit6
(qsec1 = summary(fit6)$r.squared)

fit7 = lm( mpg ~ vs , data = mtcars)
fit7
(vs1 = summary(fit7)$r.squared)

fit8 = lm( mpg ~ am , data = mtcars)
fit8
(am1 = summary(fit1)$r.squared)

fit9 = lm( mpg ~ gear , data = mtcars)
fit9
(gear1 = summary(fit9)$r.squared)

fitz = lm( mpg ~ carb , data = mtcars)
fitz
(carb1 = summary(fitz)$r.squared)

R2 = data.frame(cyl=cyl1 , disp=disp1 , hp=hp1 , drat=drat1 , wt=wt1 , qsec=qsec1 , vs=vs1 , am=am1 , gear=gear1 , carb=carb1 )
R2

fmodel = lm(formula = mpg ~ cyl+disp+hp+wt+am , data = mtcars)
summary(fmodel)
coef(fmodel)

fitted(fmodel)
str(mtcars)
(ndata = data.frame(cyl=c(6,4,8), disp=c(108,160,200), hp=c(110,100,135), wt=c(2.55, 2.11, 2.89), am=c(1,0,1)))
ndata  


predictedMpg=predict(fmodel, ndata , predict='response')
cbind(ndata, predictedMpg)   
?predict