# (A) #
mu<-20
data<-c(19.2,18.4,19.8,20.2,20.4,19)
n<-length(data)
x<-mean(data)
s<-sd(data)
t<-(x-mu)/(s/sqrt(n))
t_lower<-qt(0.05,n-1)
t_upper<-qt(0.95,n-1)
p_value<-2*pt(t,lower.tail=TRUE,df=n-1)
t.test(data,mu=20,conf.level=0.90,alternative="two.sided")
boxplot(data,ylab="Hp level",col="green")
qqnorm(data,main="Plot")
qqline(data)

# (B) #
t<-(x-mu)/(s/sqrt(n))
t_upper<-qt(0.1,lower.tail=FALSE,n-1)
p_value<-pt(t,lower.tail=FALSE,df=n-1)

# (C) #
t<-(x-mu)/(s/sqrt(n))
t_lower<-qt(0.1,lower.tail=TRUE,n-1)
p_value<-pt(t,lower.tail=TRUE,df=n-1)

# (D) #
CI<-c(x+t_lower*s/sqrt(n), x+t_upper*s/sqrt(n))
