w1 <- read.csv(file="D:\\cuckoo\\final year project\\csv files\\2012.csv",sep=",",head=TRUE)
head(w1)
wconsumer<-w1[1]
wclusterformonth<-w1[1]
for (i in seq(2,7))
{
w2 <- w1[c(i)]
head(w2)
w3 <- as.data.frame(scale(w2))
head(w3)
library(NbClust)


wssplot <- function(data, nc=4, seed=5){
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")
}
wssplot(w3)
wk<-kmeans(w3,3)
wk$centers
clusterno<-wk$cluster
#assign(paste("clusterformonth",i,sep=""), wk$cluster)
clusterno
#x=paste("clusterformonth",i,sep="")
#y=paste("clusterformonth",i,sep="")
#get(x)
w4 <- cbind(w2,clusterno)

#w4 <- cbind(w2,assign(paste("clusterformonth",i,sep=""),get(x)))
colnames(w4)[2]<-paste("clusterID",i-1,sep="")
head(w4)

wconsumer<-cbind(wconsumer,w4)
wclusterformonth<-cbind(wclusterformonth,w4[2])

}
#w5 <- wconsumer[order(clusterno),]
#head(w5)

#write.csv(wconsumer, file="D:\\cuckoo\\final year project\\csv files\\monthandcluster.csv")
write.csv(wclusterformonth, file="D:\\cuckoo\\final year project\\csv files\\2012onlyclustersforallmonths.csv")

