#Pearson Correlation Coefficient I
data <- read.table("stdin",header=F, skip=1)
dat <- t(data)
out <- cor(dat[,1],dat[,2])
cat(round(out,3))


# Spearman's Rank Correlation Coefficient
# Enter your code here. Read input from STDIN. Print output to STDOUT
data <- read.table("stdin",header=F, skip=1)
RankX<-rank(data[1,])
RankY<-rank(data[2,])
n<-length(RankX)
SqrD<-(RankX-RankY)^2
R<-1-(6*sum(SqrD)/(n*(n^2-1)))
cat(round(R,3),sep="\n")
