#Vectors----
v1 = c(1,2,3,4,5)
class(v1)
?class

v2= c('a', 'b','c','d','e')
v2
class(v2)

v3= c('a', 2,'c','d',T, F, 'z')
v3
class(v3)

v1 = c(1,2,3,4,5)
v1[v1==4]=7
v1

set.seed(100)
v7 = rnorm(10, mean=100, sd=10)
v7
mean(v7)
sd(v7)

#set.seed is used for same randomness throughout

hist(v7)
hist(v7, breaks=20, col=1:7)

hist(v7, freq=F, col='red', main='', xlab='Marks', ylab='Counts')

#Gives Y-axis as density i.e. in percentage form
#xlim and ylim function

lines(density(v7), col='black', lty=3, lwd=2)

title(main='Pune', sub='MBA++')



?hist
?rnorm


#Matrix----

?matrix
length(100:230)
m1 = matrix (100:230, 10)
m1

(m2 = matrix (c(100:229), 10, 10))

m2[c(1:5), c(1:5)]
#1 to 5, all rows and columns are included

m2[c(1,5), c(1,5)]
#only 1st and 5th rows are included

colSums(m2)
colMeans(m2)
rowSums(m2)
mean

#Array----
length(100:123)
4*3*2
a1 = array(100:123)
a1
(a1 = array(100:123, dim=c(4,3,2)))
#Dimensions ; Rows, Columns, Matrices

loc = paste('loc', 1:4, sep=':')
loc

#Array-Example
(a1 = array(100:123, dim=c(4,3,2)))
(loc = paste('loc', 1:4, sep=':'))
(product = paste('prod', 1:3, sep='-'))
(coy = paste('coy', 1:2, sep='@'))
dimnames(a1) = list (loc, product, coy)
a1

apply(a1,1, sum)
apply(a1,2, sum)
apply(a1,3, sum)
sum(a1)

apply(a1,c(1,2), sum)
apply(a1,c(2,3), sum)
apply(a1,c(1,3), sum)


#Data Frame----

(rollno = 1:30)
(sname = paste ('student',1:30,sep=''))
(gender = sample (c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(runif(30,50,100)))
df1=data.frame(rollno, sname, gender, marks)
head(df1)
tail(df1)

str(df1)
class(df1)
summary(df1)

df1
df1$rollno
df1$gender

df1[1:10,]
df1[marks > 90 & gender=="F", c(1,2)]
df1[marks > 90 | gender=="F", ]

names(df1)
#names of columns

dim(df1)
#names of rows

aggregate(df1$marks, by=list(df1$gender), FUN=min)
df2= aggregate(marks ~ gender, data=df1, FUN=max)

df2= aggregate(marks ~ gender, data=df1, FUN=max)
pie(x=df2$marks)

df2= aggregate(marks ~ gender, data=df1, FUN=max)
barplot(df2$marks, col=1:2)

<<<<<<< HEAD
(rollno = 1:30)
(sname = paste ('student',1:30,sep=''))
df1=data.frame(rollno, sname)
df1

#str, dim, class, summary
str(df1)
#filter
df1$rollno
df1$sname
=======
>>>>>>> 92cc4de3b88221eeeaf3355e59dce3d9f2136909

?aggregate

?sample

#check sample command
#floor and ceiling are used to remove decimal values
#runif (30 , 50 ,100) gives 30 numbers uniformly distributed between 50 and 100
#head and tail gives first and last values respectively 
#data frame is the object which is maximum times used in R
#summary command helps in analytics
#'$' after df1 gives various dropdown options
# & is for combining both attributes and | is for "Or" option


#Factors----

(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradesF = factor(grades)
grades
gradesF

gradesF1 = factor(grades, ordered=T)
gradesF1
sort(gradesF1)
rev(gradesF1)

gradesF2 = factor(grades, ordered=T, levels=c('D','B','C','A'))
gradesF2


#data types - Nominal, ordinal, interval, ratio
#ratio - more calculations can be done
#gradesF gives different types of grades


# List----
<<<<<<< HEAD
(v1 = 1:30)
(m1 = matrix(1:24, nrow=6))
(a1 = array (1:24, dim=c(4,3,2)))
(df1 = data.frame(rollno=c(1:5), sname=c(paste('S',1:5, sep='-'))))
class(v1); class(m1); class(a1); class(df1)

L1 = list(v1, m1, a1, df1) #List
L1
L1[1]; L1[2]; L1[3]; L1[4]
(v2 = c('a','b'))
L2 = list(v2, L1)
L2
=======





>>>>>>> 92cc4de3b88221eeeaf3355e59dce3d9f2136909




