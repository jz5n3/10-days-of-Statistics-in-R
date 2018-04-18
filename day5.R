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


# Normal Distribution I
# Enter your code here. Read input from STDIN. Print output to STDOUT
A <- pnorm(19.5,mean = 20,sd = 2, lower.tail = TRUE)
B <- 1- pnorm(20,mean = 20,sd = 2, lower.tail = TRUE) - pnorm(22,mean = 20,sd = 2, lower.tail = FALSE)

cat(round(A,3),sep="\n")
cat(round(B,3),sep="\n")

# Normal Distribution II
# Enter your code here. Read input from STDIN. Print output to STDOUT
A<-100*pnorm(80,mean=70,sd=10,lower.tail=FALSE)
C<-100*pnorm(60,mean=70,sd=10,lower.tail=TRUE)
B<-100*(1-pnorm(60,mean=70,sd=10,lower.tail=TRUE))
cat(round(A,2),sep="\n")
cat(round(B,2),sep="\n")
cat(round(C,2),sep="\n")
