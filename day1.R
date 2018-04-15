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

# Interquartile Range
# Enter your code here. Read input from STDIN. Print output to STDOUT
input<-file('stdin',open='r')
input<-readLines(input)
e<-as.numeric(unlist(strsplit(input[2]," ")))
f<-as.numeric(unlist(strsplit(input[3]," ")))
s<-rep(e,f)
IQR<-function(x){
    y<-sort(x)
    n<-length(y)
    Q2<-(n+1)/2
    if(floor(Q2)==Q2){
        Q1=Q2-1
        Q3=Q2+1        
    }else{
        Q1=Q2-0.5
        Q3=Q2+0.5
    }
    IQR<-median(y[Q3:n])-median(y[1:Q1])
    return(IQR)
}
calIQR<-format(round(IQR(s),1),nsmall=1)
cat(calIQR,sep="\n")

# SquareRoot
# Enter your code here. Read input from STDIN. Print output to STDOUT
input<-file('stdin',open='r')
data<-as.numeric(unlist(strsplit(readLines(input)[2]," ")))
squareroot<-function(x){
    m<-mean(x)
    n<-length(x)
    s<-sqrt(sum((x-m)^2)/n)
    return(s)
}
sqr<-squareroot(data)
cat(format(round(sqr,1),nsmall=1),sep="/n")


