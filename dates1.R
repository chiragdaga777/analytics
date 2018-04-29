#Handling and creating Dates in R

#date in yyyy-mm-dd
dates1a = c('2018-21-4', '2018-29-4')
class(dates1a)
?as.Date
as.Date(dates1a)  # error

dates1b = as.Date(dates1a, format='%Y-%m-%d')
class(dates1b)
dates1b
dates1b + 1

#default format %Y-%m-%d
dates2a = c('2018 - 21 - 4')
class(dates2a)  # character so far
(dates2b = as.Date(dates2a))  # convert to date
class(dates2b)  # date now
format(dates2b, format=('%Y - %d - %b')) # print in different format

#dates2b will be having Date in original format.

#Format Types ----
#%Y: 4-digit year (1982)
#%y: 2-digit year (82)
#%m: 2-digit month (01)
#%d: 2-digit day of the month (13)
#%A: weekday (Wednesday) 
#%a: abbreviated weekday (Wed)
#%B: month (January)
#%b: abbreviated month (Jan)

format(dates2b, format="%A  %d  %m  %y") # another format

#System Date
Sys.Date()
format(Sys.Date(), format="%A: %d %B %Y")

Sys.time()

?Sys.Date

#increment/ decrement dates 
dates2b
(course = dates2b + 0:11) # start : 11 days course

cat(format(course, format="%B-%d"))
months(course)
weekdays(course)
quarters(course)

#Date to character
dates2b; class(dates2b)
(dtoc = as.character(dates2b))
class(dtoc)

#one more practise on date format
dates3a =as.Date('30Apr18',format("%d%b%y"))
class(dates3a)

#Difference in dates
course
min(course)  # first date
max(course)  # last date
range(course) # start to end
mean(course)  # avg date ?
median(course) # middle date
course[c(1,5)] # 1st(not 0th) & 5th date 
course[1] ; course[9]
----------------------------------------------
dob=as.Date('06-07-1996', '%d-%m-%Y')
dob
diff=(duration = Sys.Date() - dob)
as.numeric((Sys.Date() - dob)/365) #: Years
age=diff/365
age
----------------------------------------------
(duration = course[8] - course[1])
(duration2 = max(course) - min(course))

#Sequence of Dates
?seq
#seq(from, to, by, length.out = NULL, along.with = NULL, ...)
#by years : from start date to end date
seq(as.Date("2016/1/1"), as.Date("2018/5/1"), "years")

## by month : 6 months
seq(as.Date("2017/12/6"), by = "year", length.out = 6)
seq(as.Date("2017/1/1"), by = "month", along.with = c(3,2))  # 
seq(as.Date("2017/1/1"), by = "month", length.out = length(c(3,2,43,4))) 


## quarters
seq(as.Date("2017/1/1"), as.Date("2018/1/1"), by = "quarter")
#Find 7th of all months between two dates
(dateseqF = seq(as.Date("2017/1/7"), as.Date("2018/1/7"), by = "1 month"))  # order
# dates in opposite order
(dateseq = seq(as.Date("2018/1/7"), as.Date("2017/1/7"), by = "-1 month"))  # reverse order

(dateseq = seq(as.Date("2018/1/7"), as.Date("2017/1/7"), by = "-1 month"))
format((dateseqF = seq(as.Date("2017/1/7"), as.Date("2018/1/7"), by = "1 month")), format="%A")

# then reverse them
rev(dateseq)# correct the order
format(rev(dateseq), "%A : %d-%b")

#another Sequence : using another package
chron::seq.dates("01/01/2017", "12/31/2017", by = "months")
chron::seq.dates("01/01/2017", "12/31/2017", by = "weeks")
