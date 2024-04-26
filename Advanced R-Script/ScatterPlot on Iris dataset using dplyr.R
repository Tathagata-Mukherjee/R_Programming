library(datasets)
data("iris")
View(iris)

library(dplyr)
a<-iris
a%>%
  select(Sepal.Length,Sepal.Width)%>%
  filter(a$Species=="setosa")

plot(x=a$Sepal.Width,y=a$Sepal.Length,xlab="Width",ylab="Length",
     main="Length v/s Width",col='red')
