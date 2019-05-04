x=read.csv("D:/cuckoo/final year project/cluster1metgedcells.csv")
x1=sort(c(x$Month[1:12]))
y1=c(x$consumption[1:12])
y2=c(x$consumption[13:24])
y3=c(x$consumption[25:36])
y4=c(x$consumption[37:48])
y5=c(x$consumption[49:60])
plot(x1,y1,type="o",col="blue",pch="o",ylim=c(2000,12000))


legend('topright',c("self","average","efficent"), lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("blue","red","green"))
j=1
a=c("red","green","yellow","black")
for(i in seq(13,nrow(x),12))
{
  lines(x1,c(x$consumption[i:(i+11)]),type="o",col=a[j])
  j=j+1
  }
userinput=3
for(i in seq(1,nrow(x),12))
if(x$Apt[i]==userinput)
{
  y=c(x$consumption[userinput:(userinput+11)])
  plot(x1,y1,type="o",col="blue",pch="o",ylim=c(2000,12000))
}
lines(x1,mean(x$consumption),type="o",col="red")
