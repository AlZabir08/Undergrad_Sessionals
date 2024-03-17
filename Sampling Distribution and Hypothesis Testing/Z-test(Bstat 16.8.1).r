####### (A)
n<-100
x<-40
p<-x/n
pu<-0.25
z<-((p-pu)/sqrt((pu*(1-pu))/n))
z_lower<-qnorm(0.025)
z_upper<-qnorm(0.975)
p_value<-pnorm(z,lower.tail=FALSE)

####### (B)
n<-200
x<-100
p<-x/n
pu<-0.40
z<-((p-pu)/sqrt((pu*(1-pu))/n))
z_upper<-qnorm(0.05,lower.tail=FALSE)

p_value<-pnorm(z,lower.tail=FALSE)

######## (C)
n<-400
x<-100
p<-x/n
pu<-0.30
z<-((p-pu)/sqrt((pu*(1-pu))/n))
z_lower<-qnorm(0.05,lower.tail=TRUE)
p_value<-pnorm(z,lower.tail=TRUE)