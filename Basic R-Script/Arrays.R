#Array is multi-dimensional data structure
#Array creates composition of multiple matrices in an array
#Array is created by array()
#Accepts input as c()

v1<-c(3:11)
length(v1)
v2<-c(12:21)
length(v2)
a1<-array(c(v1,v2), dim = c(3,3,3))     #dim accepts 3 parameters rows, columns, matrices
a1

#Naming Array
r<-c('R1', 'R2', 'R3')
c<-c('C1', 'C2', 'C3')
m<-c('Matrix1', 'Matrix2', 'Matrix3', 'Matrix4')
v1<-c(3:11)
v2<-c(12:21)
v3<-c(22:31)
arr<-array(c(v1,v2,v3), dim = c(3,3,4), dimnames = list(r,c,m))
arr

#Accessing Elements
arr[2,2,1]                              #Three parameters row,columns,matrices

#Access 1st and 3rd row in Matrix 3rd
arr[c(1,3), ,3]

#Access 2nd and 1st column in Matrix 2nd
arr[ ,c(2,1),2]

#Access 3rd and 2nd column from Matrix2 and Matrix1
arr[ ,c(3,1),c(2,1)]

#Update values by 50, less than 20 in Matrix2
arr[ , ,2][arr[ , ,2]<20]<-50
arr

#Update all rows and columns by 200 in Matrix3
#arr2<-arr[ , ,3]
#arr2[]<-200
#arr2
arr[ , ,3]<-200
arr

#Find the length and dimensions of array
#length() and dim()
length(arr)
dim(arr)