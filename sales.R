sales = read.csv(file.choose())
head(sales)
#top 6 rows

# whichever you read the data, store it in sales object
#sales = sales1

str(sales) #structure of data
class(sales)
dim(sales)
summary(sales)
(names(sales) = c('custname', 'region','partnum','revenue','cost','margin'))
tail(sales)

unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))

library(dplyr)

names(sales)
sales %>% group_by(custname) %>% summarize(Revenue = sum(revenue)) %>%
  arrange(desc(Revenue)) %>% head(n=10)

options(tibble.width = Inf) 
#displays all columns

options(tibble.print_max = Inf) 
# to show all the rows

library(dplyr)
sales %>% count(custname, sort=TRUE) %>% head(n=5)

sales %>% dplyr::group_by(custname) %>% dplyr ::summarise(n = n()) %>% dplyr::arrange(desc(n)) %>% head(n=5)


# Summarise by Part Num
sales %>% count(partnum, sort=TRUE) %>% head(n=5)

sales %>% dplyr::group_by(partnum) %>% dplyr ::summarise(n = n()) %>% dplyr::arrange(desc(n)) %>% head(n=5)


# Which parts have highest profit ; part no - sum(profit)
sales %>% dplyr::group_by(partnum) %>% dplyr ::summarise(TotalMargin = sum(margin)) %>% dplyr::arrange(desc(TotalMargin)) %>% head()

df4=sales %>% group_by(region) %>% summarise(Revenue = sum(revenue)) %>%
arrange(desc(Revenue))
pie(x=df4$Revenue)
barplot(df4$Revenue, col=1:6)


sales %>% filter(region =='01-East') %>% head()
sales %>% filter(revenue > 7771000) %>% select(custname, revenue)














