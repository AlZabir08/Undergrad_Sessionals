####### (A) #######
x<-c(29,32,31,32,32,29,31,30)
y<-c(26,27,28,27,30,26,33,36)
d<-(x-y)
n<-length(d)
df<-(n-1)
d_bar<-mean(d)
s<-var(d)
s_bar<-sd(d)
t<-d_bar/(s_bar/sqrt(n))
t_lower<-qt(0.005,df)
t_uper<-qt(0.995,df)
p_value<-2*pt(t,lower.tail=FALSE,df)

######### (B) #######
conf_interval<-t.test(x, y, conf.level = 0.99, paired = TRUE)$conf.int