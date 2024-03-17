# Ho=Not the same
M<-matrix(c(75,105,25,95),ncol=2,byrow=TRUE)
df=1
M_lower<-qchisq(0.025,df)
M_upper<-qchisq(0.975,df)
chisq.test(M)