# Central Limit Theorem
# Enter your code here. Read input from STDIN. Print output to STDOUT
result<-pnorm(9800,mean=205*49,sd=15*sqrt(49))
cat(round(result,4),sep="\n")
