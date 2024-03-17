##### (A) ####
x1<-c(100,125,135,128,140,142,128,137,156,142)
x2<-c(95,87,100,75,110,105,85,95)
n1<-length(x1)
n2<-length(x2)
s1<-sd(x1)
s2<-sd(x2)
c<-s1/s2
x1_bar<-mean(x1)
x2_bar<-mean(x2)
x1_var<-var(x1)
x2_var<-var(x2)
sp<-((n1-1)*x1_var+(n2-1)*x2_var)/(n1+n2-2)
t_cal<-(x1_bar-x2_bar)/sqrt(sp*(1/n1+1/n2))
t_lower<-qt(0.025,df=n1+n2-2)
t_upper<-qt(0.975,,df=n1+n2-2)
p_value<-2*pt(t_cal,lower.tail=FALSE,df=n1+n2-2)
conf_interval<-t.test(x1, x2, conf.level = 0.95)$conf.int

###### (B) ######
t_cal<-(x1_bar-x2_bar)/sqrt(sp*(1/n1+1/n2))
t_upper<-qt(0.01,lower.tail=FALSE,df=n1+n2-2)
p_value<-pt(t_cal,lower.tail=FALSE,df=n1+n2-2)