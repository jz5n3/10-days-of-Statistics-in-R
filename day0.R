# Day 0: Mean, Median, Mode
stat<-function(x){data=sort(x)
                  modes=names(table(data))[table(data)==max(table(data))]
                  m3=modes[1]
                  return(m3)}
STDIN<-sort(c(64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060))
m3=stat(STDIN)
m1=mean(STDIN)
m2=median(STDIN)

cat(m1,sep="\n")
cat(m2,sep="\n")
cat(m3,sep="\n")
