#Apply Family Functions
#apply(), lapply(), sapply(), tapply()
#apply() <- implement aggregation on rows and columns
#input - matrix, array, dataframe
#output - vector
#syntax - apply(input,margin,function)
#margin can be 1 or 2. 1 for row, 2 for column

m1<-matrix(c(1:12),nrow=3,ncol=4,byrow=TRUE)
m1
apply(m1,1,sum)
apply(m1,2,sum)
class(apply(m1,2,sum))    #integer

d1<-data.frame(RollNo=c(12,16,14,8), Marks=c(30,28,46,99))
d1
#apply(d1,2,max)   #Giving output of max values in both column
apply(d1[2],2,max)
class(apply(d1[2],2,max))   #numeric

#lapply()
#input - vector,list
#output - list
#Syntax - lapply(input,function)

v1<-c("cse","Civil","ece","mec","it")
v1
lapply(v1,toupper)
class(lapply(v1,toupper))     #list

c1<-list(A=c(5:8),B=data.frame(X=c(1:5), Y=c(6:10)))
c1
lapply(c1,sum)
class(lapply(c1,sum))


#Find the square of 1 to 10 number
f1<-function(x){
  x^2
}
num<-c(1:10)
lapply(num, f1)

#Find the square root of 12 to 24 numbers arranged in 6*6 matrix

m2<-matrix(c(12:24),nrow=6,ncol=6)
# f2<-function(y){
#   y^2
# }
apply(m2,1,sqrt)

#sapply
#input - vector,list
#output - by default same as input
#Syntax - sapply(input,function)

a1<-c(6,9,26,25)
class(a1)
sapply(a1,min)
class(sapply(a1,min))


#tapply()
#used for compute statistical analysis
#create a subset of a vector and then apply function to each of subset
#Syntax - tapply(input,index,function)

sal<-c(234,456,200,300,520,680)
emp<-c('F','M','M','F','M','F')
tapply(sal,emp,max)

#Find the employees in all department working in Wipro,TCS
#IT - 5
#Security - 3
#Management - 7
#Management - 9
#Security - 2
#Marketing - 5
#IT - 5
#Marketing - 2

dept<-c("IT","Security","Management","Marketing","IT","Security","Management","Marketing")
emp_count<-c(5,3,7,5,5,2,9,2)
s<-tapply(emp_count, dept, sum)
s
paste("Total Manpower =", sum(s))

