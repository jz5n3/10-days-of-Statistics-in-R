# Poisson Distribution I
# Enter your code here. Read input from STDIN. Print output to STDOUT
PoissonDistr<-function(n,k){
    result<-(n^k*(exp(1))^(-n))/factorial(k)
    return(result)
}
result<-PoissonDistr(2.5,5)
cat(round(result,3),sep="\n")

# Poisson Distribution II
# Enter your code here. Read input from STDIN. Print output to STDOUT
A<-160+40*(0.88+0.88^2)
B<-128+40*(1.55+1.55^2)
cat(round(A,3),sep="\n")
cat(round(B,3),sep="\n")
