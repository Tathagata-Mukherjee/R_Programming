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

