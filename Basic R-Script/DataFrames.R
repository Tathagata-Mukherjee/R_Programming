#Data Structure - DataFrame
#Store data in tabular format
#that contains multiple datatypes in differet fields
#DataFrame is 2-dimensional
#Heterogeneous data structure
#Input as list of vector of equal length
#Created by data.frame()


d<-data.frame(RegNo=c(1,2,3), Name=c('Messi','Ronaldo','Neymar'), Course=c('Python','Java','C++'))
d
#Output
#  RegNo    Name Course
#1     1   Messi Python
#2     2 Ronaldo   Java
#3     3  Neymar    C++

employee<-data.frame(EmployeeID=c(1,2,3,4), Employee_Name=c('Messi','Ronaldo','Neymar','Rooney'), Salary=c(100000,90000,85000,80000))
employee
str(employee)

#Access row (by indexing)
d[1,]
d[c(1:2),]
d[ ,2]
d[ ,c(1:2)]

#Exract row and column
d[c(2,3),c(1,3)]

#Find Salary of EmployeeID 2 and 3. 
employee[c(2,3),c(1,3)]

#Access column by naming using $
d1<-d$RegNo
d1

d2<-data.frame(d$RegNo, d$Name)
d2

#rbind() and cbind()
r1<-list(4,'Muller','DBMS')
a1<-rbind(d,r1)
a1

Grade<-c('O','A','A+','B+')
a2<-cbind(a1,Grade)
a2