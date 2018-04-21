#deplyr

df= read.csv ('./data/denco.csv')
df
summary(df)
str(df)
names(df)

aggregate(df$revenue, by=list(df$region), mean)

library(gsheet)
