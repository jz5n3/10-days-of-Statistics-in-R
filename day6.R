# Central Limit Theorem I
# Enter your code here. Read input from STDIN. Print output to STDOUT
result<-pnorm(9800,mean=205*49,sd=15*sqrt(49))
cat(round(result,4),sep="\n")

# Central Limit Theorem II
# Enter your code here. Read input from STDIN. Print output to STDOUT
result<-pnorm(250,mean=2.4*100,sd=2*sqrt(100))
cat(round(result,4),sep="\n")

# Central Limit Theorem III
# Enter your code here. Read input from STDIN. Print output to STDOUT
A <- 500 - 1.96*80/sqrt(100)
B <- 500 + 1.96*80/sqrt(100)
cat(round(A,2),sep='\n')
cat(round(B,2),sep='\n')
