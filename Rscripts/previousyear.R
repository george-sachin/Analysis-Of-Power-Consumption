inputdata=read.csv("D:/cuckoo/final year project/csv files/2year.csv")
head(inputdata)
plot(as.Date(inputdata$Date[1:12],"%d/%m/%y")
,inputdata$monthlycons[1:12],type="o",col="blue",pch=16,xlab="Month", ylab="consumption")

lines(as.Date(inputdata$Date[13:24],"%d/%m/%y")
     ,inputdata$monthlycons[13:24],type="o",col="green",pch=16,xlab="Month", ylab="consumption")
lines(as.Date(inputdata$Date[25],"%d/%m/%y")
      ,inputdata$monthlycons[25],type="o",col="red",pch=16,xlab="Month", ylab="consumption")
lines(as.Date(inputdata$Date[13],"%d/%m/%y")
      ,inputdata$monthlycons[13],type="o",col="red",pch=16,xlab="Month", ylab="consumption")

legend('topleft',c("2016","2017","2018"), lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("blue","green","red"))
legend('topleft',c("2017","2018"), lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("blue","red"))
