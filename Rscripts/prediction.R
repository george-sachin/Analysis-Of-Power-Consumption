input=160220030013
inputfile=paste(input,".csv",sep="")
inputfile=paste("E:\\be project\\final year project\\csv files\\consumer\\",inputfile,sep="")
w1<-read.csv(file=inputfile)
w2<-w1[-1]
w3<-w2[c(5,7,6,8),]
inputmonth="Jun"
inputmonth=match(inputmonth,month.abb)
averageconsumption=colMeans(w3,na.rm=TRUE)
print(paste("Next Month Consumption is",averageconsumption[inputmonth+1]))
month=c("1/1/2000","1/2/2000","1/3/2000","1/4/2000","1/5/2000","1/6/2000","1/7/2000",
        "1/8/2000","1/9/2000","1/10/2000","1/11/2000","1/12/2000")
monthset=as.Date(month,"%d/%m/%y")
par(xpd=FALSE)
plot(monthset,w2[5,],type="o",col="blue",pch="o",xlab="Month", ylab="consumption",
     bty='L',ylim=c(0,1000))
#lines(monthset,w2[3,],type="o",col="green")
lines(monthset,w2[6,],type="o",col="brown")
lines(monthset,w2[7,],type="o",col="green")
lines(monthset,w2[8,inputmonth],type="o",col="black")
#lines(inputmonth+1,averageconsumption[inputmonth+1])
points(as.Date(paste("01/",inputmonth,"/2000",sep=""),"%d/%m/%y"),
       averageconsumption[inputmonth],col="red",pch=19)
par(xpd=TRUE)
legend('topright',c("2013","2014","2015","2016","next month"), lty=c(1,1,1,1,0),pch=19,lwd=c(2.5,2.5,2.5),col=c("blue","brown","green","black","red"))

