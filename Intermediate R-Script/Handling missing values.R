#Handling missing values
#NA and NaN are reserved words indicate missing values

v1<-c(2,3,4)
v2<-c(8,9, )     #Argument 3 is missing
v1+v2            #Error -- NA

v1<-c(2,3,0/0)
v2<-c(1,2,3)
v1+v2            #NaN because of 0/0 (Not a Number)

is.na(v1)        #Gives boolean output if there is NA error
is.nan(v1)       ##Gives boolean output if there is NaN error

#Extract NA and NaN values by !
x<-c(1,2,NA,9,NA,NaN)
d<-is.na(x)
d
x[!d]            #Output --> 1 2 9

#Missing Data Filter Function
d1<-data.frame(ID=c(1:5),Name=c('A','B','C','D','E'))
d1
d1[2,2]<-NA
d1
d1[5, ]<-NA
d1
d1[3,1]<-NA
d1

is.na(d1)
sum(is.na(d1))
colSums(is.na(d1))
na.exclude(d1)

#Exclude remove entire row even with one missing value

####Install package "VISDAT"

library(visdat)
vis_miss(d1)