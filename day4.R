# Cummulative Probability
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
