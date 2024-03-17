m<-c(70,85,92,90,95,79,80,85,90,85,95)
s<-var(m)
mu<-50
n<-length(m)
x2<-((n-1)*s)/mu
x2_upper<-qchisq(0.05,lower.tail=FALSE, df=n-1)
p_value<-pchisq(x2,lower.tail=FALSE,df=n-1)