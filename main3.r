data("iris")
View(iris)

# Use of apply function-------------------------------------------------->
apply(iris[,1:4], 2, mean)

fun = apply(iris[,1:4], 2,function(x){
  return (list(paste("Mean is ",mean(x)),paste("Medium is ",median(x))))
})
fun$Sepal.Length

# Use of lapply and sapply function--------------------------------------->
fun = lapply(iris,mean)
fun

fun2 = sapply(iris,mean,simplify = T)
fun2

# Use of tapply function--------------------------------------------------->
tapply(iris[,1], iris$Species, mean)

for (i in colnames(iris[1:4])){
  print(i)
  print(tapply(iris[,i], iris$Species, mean))
}

# Use of as.Date function--------------------------------------------------->

# Default format is year-month-date
d1 = "2020-01-01"
str(d1)
t1 = as.Date(d1)
str(t1)

# If you apply your format then it will not understand
d2 = "01-01-2020"
t2 = as.Date(d2)
str(t2)

# If you Want to apply your format
t2 = as.Date(d2,format = "%d-%m-%Y")
str(t2)

# Extract month
months(t2)

# Extract weekdays
weekdays(t2)

# Extract from format
format(t2,"%Y")
format(t2,"%y")

# Want to convert days into date
as.Date(42003,origin = "1905-01-01")

# Use of as.POSIXct function----------------------------------------------->

# Default format
d1 = "2020-01-01 15:54:30"
str(d1)
t1 = as.POSIXct(d1)
t1
typeof(t1)

# Change format
t2 = as.POSIXct("20200809 13:23:50",format = "%Y%m%d %H:%M:%S")
t2

# Extract month
months(t2)

# Extract weekdays
weekdays(t2)

# Want to convert days into date
as.POSIXct(42003*(60*60*24),origin = "1905-01-01")

# Use of as.POSIXlt function----------------------------------------------->

# Default format
d1 = "2020-01-01 15:54:30"
str(d1)
t1 = as.POSIXlt(d1)
t1
typeof(t1)

# Change format
t2 = as.POSIXct("20200809 13:23:50",format = "%Y%m%d %H:%M:%S")
t2

format(t2,"%d/%m/%Y")
trunc(t2,"mins")
trunc(t2,"day")

as.Date(42003,"1905-01-01")
strptime(as.Date(42003,"1905-01-01"),format = "%Y-%m-%d")

# Lubridate package------------------------------------------------------->

library(lubridate)

ymd("20200101")

mdy("01012020")

tm1 = ymd("20200101")
tm2 = ymd("20200130")
interval(tm1,tm2)

ymd("20200120") %within% interval(tm1,tm2)  # check date present between interval

as.period(interval(tm1,tm2),unit = "mins")
as.period(interval(tm1,tm2),unit = "days")

week(tm2)
weekdays(tm2)

as_date(42003,origin = "1905-01-01")

week(as_date(42003,origin = "1905-01-01"))