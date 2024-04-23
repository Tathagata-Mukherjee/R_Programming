#tidyr package
#used for reshaping data

library(tidyr)
library(readxl)
a<-read_excel(file.choose())
View(a)

#gather(input,key,value)
#used for changing columns into rows, wide to long
a1<-gather(a,key=features,value=data,mpg:disp)
a1

#spread() 
#long to wide, rows into columns
a2<-spread(a1,features,data)
a2

#separate()
a3<-separate(a,col=production,into=c("Production","Year"))
a3

#unite()
#merge two columns into one
a4<-unite(a3,col="cyl-mpg",c("cyl","mpg"),sep='-')
a4

#nest()
#creates a list-column of dataframe
a5<-nest(a,key=c("mpg"))
a5

#import built-in dataset iris
#apply gather and unite on any variable

library(datasets)
data("iris")
View(iris)



