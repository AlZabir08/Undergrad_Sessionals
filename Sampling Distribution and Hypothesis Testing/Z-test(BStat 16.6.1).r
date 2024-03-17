################   (A)  #################

n<-15
x<-c(110,118,130,140,142,146,112,100,95,98,96,122,123,124,130)
x_bar=(sum(x)/n)
sd<-sqrt(300)
z<-((x_bar-110)/(sd/sqrt(n)))
z_tab_lower <- qnorm(0.025)
z_tab_upper<- qnorm(0.975)
p_value<- pnorm(z,lower.tail=FALSE)

##################   (B)   ################

z<-2.03
z_tab_right <- qnorm(0.05,lower.tail=FALSE)
p_value<-pnorm(z,lower.tail=FALSE)

#################   (C)   ################

z<-2.03
z_tab_left<-qnorm(0.05,lower.tail=TRUE)
p_value<-pnorm(z,lower.tail=TRUE)

###############  (D)   #################

CI<-c(x_bar+ z_tab_lower*sd/sqrt(n),x_bar+z_tab_upper*sd/sqrt(n))