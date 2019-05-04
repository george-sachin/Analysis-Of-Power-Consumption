w1 <- read.csv(file="D:\\cuckoo\\final year project\\csv files\\2011onlyclustersforallmonths.csv",sep=",",head=TRUE)
w2 <- read.csv(file="D:\\cuckoo\\final year project\\csv files\\2012onlyclustersforallmonths.csv",sep=",",head=TRUE)
w3 <- read.csv(file="D:\\cuckoo\\final year project\\csv files\\2013onlyclustersforallmonths.csv",sep=",",head=TRUE)
w1<-w1[-1]
w2<-w2[-1]
w3<-w3[-1]
head(w1)
head(w2)
head(w3)
df<-data.frame(year=as.Date(character()), Jan=integer(),Feb=integer(),Mar=integer(), Apr=integer(),
               May=integer(),June=integer())
for (i in seq(1,7)) #no of consumers
{
  head(df)
  df<-data.frame(year=as.Date(character()), Jan=integer(),Feb=integer(),Mar=integer(), Apr=integer(),
                 May=integer(),June=integer())
  for(j in seq(1,7)) #no of cols ie months
  {
    df[i,j+1]=w1[j+1]
  }

}

