#Data Structure - Matrix
#Matrix is a 2-dimentional data structure
#Elements arranged in rows and columns
#Martix is created by matrix()
#Type of element can ce integer, character, numeric
#take input in c()

mat1<-matrix(c(1:6))
mat1
mat1<-matrix(c(1:6),nrow = 3, ncol = 2)
mat1
mat<-matrix(c(1:6), nrow = 3, ncol = 2, byrow = TRUE)
mat

#Create matrix a=12,24,39.46.68.100
mat2<-matrix(c(12,24,39,46,68,100), nrow=3, ncol=2)
mat2
#  OR
mat2<-matrix(c(12,24,39,46,68,100), nrow=3, ncol=2, byrow = TRUE)
mat2

#Accessing elements of Matrix
mat2[2,1]
mat2[3,2]

#Access elements of first row
mat2[1,]

#Access elements of 1st and 3rd row
mat2[c(1,3),]

#Access elements 1st to 3rd row
mat2[1:3,]

#Access elements of 2nd column
mat2[,2]

#Access elements of 1st and 2nd column
mat2[,1:2]

#Access elements by relational operator
mat2[,2]>50

#Find elements >40
mat2[1:3,1:2]>40
#  OR
mat2>40

#Update elements
mat2[3,2]<-200
mat2

#Update 2nd row by 140
mat3<-mat2           #creating new matrix and storing the elements of mat2
mat3
mat3[2,]<-140
mat3

#Update elements >50 by 150 in 2nd column
mat3[mat3>50]<-150
mat3

#Delete rows and columns
# -1 -> 1st row deleted
# -2 -> 2nd column deleted
mat4<-mat3[-1,-2]
mat4

#Delete 3rd row 
mat4<-mat3[-3,]
mat4

#Addition of rows and columns in existing matrix
# rbind() and cbind()
#Create matrix with elements 120 to 170
mat5<-matrix(c(120:170), nrow=10, ncol=5)
mat5
mat6<-rbind(mat5,c(170:174))    #add new row
mat6
mat7<-cbind(mat5,c(170:179))
mat7

#Transpose
t(mat5)

#Arithmetic operator          #Dimensions must be same of the matrix
z<-mat1+mat2       #Addition
z

x<-mat1%%mat2      #Modulus(Gives remainder) operator - %%
x

a<-mat1/mat2       #Division
a

s<-mat1%/%mat2     #Integer Division operator - %/%
s

d<-mat1+100        #All elements are added by 100
d

g<-mat1*mat2       #Multiplication
g

#Special Matrix
sp<-matrix(11,3,3)     #1st argument constant value, 2nd and 3rd argument is no.of rows and columns resp.
sp

#Diagonal Matrix
q<-diag(5,3,3)
#   OR
q<-diag(c(5,4,3),3,3)   #if we want to specify the elements in the diagonal
q

#Identity Matrix
w<-diag(1,5,5)
w

#Naming Matrix
n<-c('R1','R2','R3')
p<-c('C1','C2','C3')
l<-matrix(c(11:19), nrow=3, ncol=3, dimnames=list(n,p))
l

