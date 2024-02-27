

#Inside lists we have vectors having different data types

store<-list(c(45L,45,23.9),c('sun','moon','earth'),c(34-7i,TRUE,FALSE))
store                   #this prints the values accordance to highest precedence of the data type
class(store)            #prints list
class(store[[3]][2])    #prints complex


#List and vector inside list
n<-list(c(45L,45,23.3),list('sun','earth',23))
n                       #again this prints the values accordance to highest precedence of the data type
class(n[[2]][3])        #prints list


#Extraction of values
n[[1]][3]
n[[2]][3]

#Access 1st three elements of list n (Q1.)
#Access 4th and 6th element of list n(Q2.)

n[[1]]                             #prints all the three values as there are three values in that list
n[[1]][1:3]                        #prints the values from index 1-3
paste(n[[2]][1], n[[2]][3])        
n[[2]][c(1,3)]                     #prints  4th and 6th element

#Update values
n[[1]][1]<-34

#update 1st and 3rd element by 100
n[[1]][1]<-100
n[[1]][3]<-100

#Deletion of value
temp<-n[[1]][-1]
temp
n

#Delete 4th to 6th elements in list n
temp1<-n[[2]][c(-1,-3)]
temp1         

#Naming list   
a1<-list(c(1,2,3),c('X','Y','Z'),c('Delhi','Kolkata','Mumbai'))
names(a1)<-c('1st','2nd','3rd')
a1

#Accessing elements by naming
a1['1st']
a1['2nd']
a1['3rd']
a1 $'2nd'[2] #access name at specific index by $

a2<-list('red','black', 'green', 'blue', 'pink')
a2

#Searching if the value is present
'red'%in% a2  #returns TRUE
'grey'%in% a2  #returns FALSE

#Append
append(a2,'orange')
a3<-append(a2,'yellow', after=2)
a3

#Question
#creating naminglist employee
#emp_id = 11,13,14,16
#name  = 'Virat','Dhoni','Yuvraj','Sehwag'
#salary = 50000,45000,40000,35000

emp<-list(c(11,12,14,16),c('Virat','Dhoni','Yuvraj','Sehwag'),c(50000,45000,40000,35000))
names(emp)<-c('Emp_id','Name','Salary')
emp