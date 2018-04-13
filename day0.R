# Day 0: Mean, Median, Mode
# Enter your code here. Read input from STDIN. Print output to STDOUT
stat<-function(x){data=sort(x)
                 modes=names(table(data))[table(data)==max(table(data))]
                  m3=modes[1]
                  return(m3)}
x<-file('stdin', open='r')
y<-readLines(x)[[2]]
z<-strsplit(y," ")
STDIN<-as.numeric(unlist(z))

m3=stat(STDIN)
m1=mean(STDIN)
m2=median(STDIN)

cat(m1,sep="\n")
cat(m2,sep="\n")
cat(m3,sep="\n")

