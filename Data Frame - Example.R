# Example of Data Frame - Data Creation
(rollno = paste ('s',1:30, sep='-'))
(sname = paste ('student',1:30, sep='','-xyz'))
(gender = sample (c('M','F'), size=30, replace=T, prob=c(.6,.4)))
(age = floor(runif(30,20,35)))
(course = sample(c('BTech','MTech','PHD'), size=30, replace=T, prob=c(.4,.4,.2)))
#table(course) - plots course in table form
#pie(table(course))
(marks = floor(runif(30,0,50)))
(married = sample (c('Yes','No'), size=30, replace=T, prob=c(.5,.5)))
df1=data.frame(rollno, sname, gender, age, course, marks, married)
df1

write.csv(df1,'pumba.csv', row.names = FALSE)

?Random
?paste0
?write.csv

(marks=round(rnorm(30, 60, 5)))
boxplot(marks)
hist(marks, freq=F)
(lines(density(marks), lwd=3, lty=5, col='red'))

?lines


