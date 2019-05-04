plot(minconsumption, xaxt = "n")
 tsp = attributes(minconsumption)$tsp
 dates = seq(as.Date("2001-01-01"), by = "month", along = minconsumption)
axis(1, at = seq(tsp[1], tsp[2], along = minconsumption), labels = format(dates, "%Y-%m"))

require(xts)
pcp <- rnorm(24)
PCP <- ts(pcp, frequency = 12, start = 2001)
plot(pcp(minconsumption), major.format = "%Y-%m")

x=(8,9)
strDates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")
sales<-read.csv("dailysales.csv")
plot(x~dates,type="l",
     xlab="Date",ylab="Units Sold")


sales<-read.csv("D:/cuckoo/final year project/csv files/dailysales.csv")
plot(sales$units[1:3]~as.Date(m,"%d/%m/%y"),type="l",
     xlab="Date",ylab="Units Sold")
monthset=c("1/1/2010",
"2/2/2010")
x=c(1,2,3,4,1,2,3,4,1,2,3,4)
plot(x~as.Date(monthset,"%d/%m/%y"),type="l",
     xlab="Date",ylab="Units Sold")
axis.Date(1, format="%b-%Y")
