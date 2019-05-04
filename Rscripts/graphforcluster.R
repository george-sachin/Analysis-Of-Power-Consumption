
inputdata=read.csv("E:/be project/final year project/csv files/Monthly Consumption 200 housesmultipled with randomvalue.csv")
inputdata1=split(inputdata,inputdata$clusterno)
#monthset=sort(c(1,2,3,4,5,6,7,8,9,10,11,12))
month=c("1/1/2000","1/2/2000","1/3/2000","1/4/2000","1/5/2000","1/6/2000","1/7/2000",
         "1/8/2000","1/9/2000","1/10/2000","1/11/2000","1/12/2000")
monthset=as.Date(month,"%d/%m/%y")
#month=read.csv("D:/cuckoo/final year project/csv files/2year.csv")
#monthset=as.Date(month$Date[1:12],"%d/%m/%y")

usercluster='1'
userinput=3
currentmonth=8
userconsumption=matrix(inputdata1[[usercluster]]$monthlycons,ncol=12, byrow = TRUE)
userconsumption1=cbind( inputdata1[[usercluster]]$Apt[seq(1,nrow(inputdata1[[usercluster]]),12)],userconsumption)

for (i in seq(1,nrow(userconsumption1)))
{
  if(inputmatrix1[i,1]==userinput)
    break;
}
par(xpd=FALSE)
plot(monthset,userconsumption1[i,c(2,3,4,5,6,7,8,9,10,11,12,13)],type="o",col="blue",pch="o",xlab="Month", ylab="consumption",bty='L')
minconsumption=apply(userconsumption,2,min)
lines(monthset,minconsumption,type="o",col="red")
avgconsumption=apply(userconsumption,2,mean)
lines(monthset,avgconsumption,type="o",col="green")
par(xpd=TRUE)
legend('topleft',c("self","average","efficent"), lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("blue","green","red"))

if (userconsumption[userinput,currentmonth]>avgconsumption[currentmonth]+500) {
  flag=0
} else if (userconsumption[userinput,currentmonth]<avgconsumption[currentmonth]-500) {
  flag=1
} else
  flag=2

