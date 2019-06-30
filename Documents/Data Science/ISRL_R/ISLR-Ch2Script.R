package(ISLR)

install.packages("ISLR")

vector <- c(5,3)
ls()
rm(x)
x=matrix(data=c(1,2,3,4),nrow=2, ncol=2)
sqrt(x)
x=rnorm(50)
y=x+rnorm(50,mean=50,sd=100)
cor(x,y)

pdf("Figure.pdf")
plot(x,y, col="green", xlab="This is the x-axis",ylab="This is the y-axis",
     main="Plot of X vs Y")
dev.off()
x=seq(-pi,pi,length=50)
y=x
f=outer(x,y,function (x,y)cos(y)/(1+x^2))
contour(x,y,f,nlevels=45,add=T)
fa=(f-t(f))/2
contour(x,y,fa,nlevels=15)
image(x,y,fa)
persp(x,y,fa,theta=30,phi=40)
persp(x,y,fa,theta=30)


write.table() #export data
setwd("~/Documents/Data Science/ISRL_R/")


Auto=read.csv("Auto.csv",header=T,na.strings ="?")
Auto [1:4 ,]
Auto=na.omit(Auto)

dim(Auto)
names(Auto)
plot(Auto$cylinders , Auto$mpg )
attach(Auto) #Tells R to make the variables in this datafram available
             #by name
plot(cylinders , mpg)
cylinders=as.factor(cylinders) #converts quant varialbes to qualitative
plot(cylinders , mpg) #boxplots will automatically be produced for 
                      #qualitative variables

plot(cylinders ,mpg , col="red", varwidth=T)
plot(cylinders ,mpg , col="red", varwidth=T,  xlab="cylinders",ylab =" MPG ")


hist(mpg)
hist(mpg,col=2)
hist(mpg,col=2,breaks=15)
pairs(Auto)
pairs( mg ~ mpg + displacement + horsepower + weight +
         acceleration )
plot(horsepower ,mpg)
identify (horsepower ,mpg ,name)