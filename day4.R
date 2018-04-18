# Binomial Distribution I
# Enter your code here. Read input from STDIN. Print output to STDOUT
boy <- 1.09/2.09
biDistr<-function(n,x,p){
    result<-(factorial(n)/(factorial(x)*factorial(n-x)))*(p^x)*(1-p)^(n-x)
    return(result)
}
result<-function(n,x,p){
    result<-0
    for (i in x:n){
        result=result+biDistr(n,i,p)
    }
    return(result)
}

CumPro<-result(6,3,boy)


cat(round(CumPro,3),sep="\n")

#Binomial Distribution II
p<-0.12
binDistr<-function(n,x,p){
    dist<-(factorial(n)/(factorial(x)*factorial(n-x)))*(p^x)*(1-p)^(n-x)
    return(dist)
}
cumdistr<-function(n,x,p){
    result<-0
    for (i in 0:x){
        result=result+binDistr(n,i,p)
    }
    return(result)
}
q1<-cumdistr(10,2,p)
q2<-1-q1+binDistr(10,2,p)
cat(round(q1,3),sep="\n")
cat(round(q2,3),sep="\n")

# Geometric Distribution I
# Enter your code here. Read input from STDIN. Print output to STDOUT
geodis<-function(n,p){
    result<-p*(1-p)^(n-1)
    return(result)
}
distribution<-geodis(5,1/3)
cat(round(distribution,3),sep="\n")

# Geometric Distribution II
# Enter your code here. Read input from STDIN. Print output to STDOUT
distribution<-1-(1-1/3)^5
cat(round(distribution,3),sep="\n")
