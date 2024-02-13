#Data types 

#Numeric
#Integer(23L)
#Complex(23+4i)
#Character("LPU")
#Logical(TRUE, FALSE)


a<-c(2,3,5,6)   #c represents vector
a               #prints 2 3 5 6

b<-list('LPU','Tathagata','Mukherjee')     #list is made by list()
b

d<-list(c(2,3,4),c('LPU','CSE','R Programming'),c(24L,45L,26L))  #list with vector
d

class(d)    #shows what is the data structure (in this case list)
class(d[[1]][2])     #prints numeric
class(d[[2]][2])     #prints character
class(d[[3]][3])     #prints integer