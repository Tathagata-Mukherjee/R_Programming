#apply family functions
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
class(apply(m1,2,sum))

d1<-data.frame(RollNo=c(12,16,14,8), Marks=c(30,28,46,99))
d1