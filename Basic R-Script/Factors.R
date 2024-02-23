#Data Structure: Factor
#Factors are the data objects which is used to categorized the data and store it as levels
#Data can be integer, numeric or character
#Labels are defined in character
#Take vector as input
#Created by factor()
#Two types of data: ordinal #ordered format and nominal #unordered format
                     
f1<-factor(c('B','D','D','A','E','A','D','C','C','D'))
f1
#Levels: A B C D E

f2<-factor(c("North","West","South","North"))
f2
#Levels: North South West     #Levels are represented in ordered format

#Accessing Elements
f1[2]
f1[2:7]
f1[c(4,5,6,7,5)]

#Update element
f1[1]<-'F'           #Error #Cant be changed as there is no F grade in the original 
f1[2]<-'C'
f1

f3<-factor(c('B','D','D','A','E','A','D','C','C','D'), levels = c('A','B','C','D','E','F'))
f3         #B D D A E A D C C D
           #Levels: A B C D E F
f3[2]<-'F'
f3         #B F D A E A D C C D
           #Levels: A B C D E F
f3[2]<-'f'
f3         #ERROR 

#Update 3rd value by 'G'
levels(f3)<-c(levels(f3),'G')
f3
f3[3]<-'G'
f3

#Label
f4<-factor(c("North","East","West","South","North"), labels = c('N','W','S','E'))
f4

#gl()#Ordered Repetition of Data
f5<-gl(3,4,labels = c("B.Tech","BCA","BBA","MBA"))    
f5
#Parameters of gl
#1st argument - levels
#2nd argument - repetition
#3rd argument - labels

#Access 1st, 4th and 5th element of f3
#Delete 3rd and 5th element of f3


