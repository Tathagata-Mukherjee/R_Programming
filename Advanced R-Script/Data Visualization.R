#Data Visualization

library(graphics)

#pie chart
#created by pie()
#pie(x(#Name of the variable),label,main(#Name of the chart),col)
#input taken as vector or dataframe

sales<-c(12,35,56,75)
label<-c("India","Japan","Russia","Korea")
pie(sales,label,main="Country's Sales",col=rainbow(length(sales)))

c1<-c('red','skyblue','green','orange')
pie(sales,label,main="Country's Sales",col=c1)

d1<-data.frame(Energy=c("Nuclear","Petrol","Coal","Diesel"), Utilized=c(35,52,15,20))
d1
#l<-c(Nuclear,Petrol,Coal,Diesel)
c2<-c('grey','pink','lightgreen','yellow')
pie(d1$Utilized,label=d1$Energy,main="Energy Consumption",col=c2)



#Bar Graph
#It is used for representing categorical data
#barplots(x,names.arg,xlab,ylab,main,col)
#Revenue earned in Jan-May

revenue<-c(78,21,45,65,32)
l<-c("JAN","FEB","MAR","APR","MAY")
barplot(revenue,names.arg=l,xlab="Months",ylab="Revenue",main="Revenue Bar Chart",col='orange',border='red')


#
d2<-data.frame(RollNo=c(1:5),Name=c("Messi","Ronaldo","Neymar","Rooney","Pele"),Marks=c(77,89,65,67,71))
d2
library(sqldf)
d3<-sqldf("SELECT * FROM d2 ORDER BY Marks DESC")
barplot(d3$Marks,names.arg=d3$Name,xlab="Names",ylab="Marks",main="Student Data",col='skyblue',border='purple')



#Scatter Plot
#Used for Comparing Variables
#plot(x,y,xlab,ylab,xlim,ylim,main)

library(datasets)
data("mtcars")
View(mtcars)
plot(x=mtcars$wt,y=mtcars$mpg,xlab="Weight",ylab="Mileage",xlim=c(2.5,5),ylim=c(15,20),
     main="Weight v/s Mileage",col='red')



#Line Graph
#plot(x,type='p'/'l'/'o',xlab,ylab,main,col)   #p - only dot, o - both line and dot, l - only line
temp<-c(35,23,44,16,18,26)
#months<-c("JAN","FEB","MAR","APR","MAY","JUN")
plot(temp,type='l',xlab="Months",ylab="Temperature in Celcius",main="Temperature in Jan-July",col='blue')

#MultiLine Graph
temp1<-c(45,23,13,24,31,21)
lines(temp1,type='l',col='purple')


install.packages("flexdashboard")