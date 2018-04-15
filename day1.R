# Quantile
# Enter your code here. Read input from STDIN. Print output to STDOUT
input<-file('stdin',open='r')
data<-as.numeric(unlist(strsplit(readLines(input)[[2]]," ")))
quantile<-function(x){
    y<-sort(x)
    n<-length(y)
    Q2<-(n+1)/2
    if (floor(Q2)==Q2){
            Q1<-Q2-1
            Q3<-Q2+1
    } else{Q1=Q2-0.5
           Q3=Q2+0.5
    }
    q<-c(median(y[1:Q1]),median(y),median(y[Q3:n]))
    return(q)
}
r<-quantile(data)
cat(r,sep="\n")
