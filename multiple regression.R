?mtcars
??mpg
require(graphics)
pairs(mtcars, main = "mtcars data")
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)

?as.factor(cyl)
?mpg
?fit
?lm
fit1 = lm( mpg ~ cyl, data = mtcars)
coplot(mpg ~ cyl | as.factor(carb), data = mtcars,
       panel = panel.smooth, rows = 1)

?apply
set.seed(123)     # allow reproducible random numbers
x <- sample(10)
> which.max(x)
[1] 7
> x[which.max(x)]
[1] 10

A <- data.frame(x=rnorm(10), y=runif(10))
A[which.min(A$x)]
  
?runif

y=runif(10)
y

?rnorm 
x=rnorm(100)
x

?boxplot.stats
?fivenum
?stem



