#dplyr package
d1=data.frame(name=c('a','b','c','d'),
              age=c(12,45,23,32),
              height=c(5,6,NA,NA),
              school=c('yes','yes','no','no'))
d1

library(dplyr)

#functions related to variables(columns)
select(d1,starts_with('s'))
select(d1,starts_with('ag'))
select(d1,starts_with('na'))

#-starts_width() except that column
select(d1,-starts_with('h'))
select(d1,2:4) #display variable in range

#print data of column heading containing 'o'
select(d1,contains("o"))

#mutate(),transmute()
mutate(d1,new_age=age+3)
mutate(d1,new_age=c(1:4))

transmute(d1,new_age=c(21:24)) #Displays only the new function

#summarise() for statistical analysis
summarise(d1,average_age=mean(age))
summarise(d1,maximum_age=max(age))
summarise(d1,sum_age=sum(age))

#functions on row
sample_n(d1,2)
sample_frac(d1,.50)
with(d1,age*2) #output display row wise

#import dataset online foods
#s1<-read.csv(file.choose())
#s1
getwd()
setwd("C:/Users/Sourabh/Downloads")
a1<-read.csv('onlinefoods.csv')
a1
View(a1)
str(a1)
sample_n(a1,10)
r<-sample_frac(a1,.20)
nrow(r)
View(distinct(a1)) #Distinct record

#Display few Variable
View(a1)
View(select(a1,Age,Occupation,Gender))

#Display all columns except latitude,longitude
View(select(a1,-latitude,-longitude))

#Display columns contains 'Occ'
head(select(a1,contains('Occ')))
sample_n(select(s1,contains('Occ')),10)

#Range of columns display
View(sample_n(select(a1,Age:latitude),15))

#Conditional selection
View(tail(filter(a1,Age>20),10))

#multiple conditions
View(filter(a1,Age>30,Family.size>4))
View(a1)

#Find employees educational qualification is post graduate and family size is 2.
View(filter(a1,Educational.Qualifications== "Post Graduate" ,Family.size==2))

#arrange rows with arrange()
a1%>% arrange(Age) %>%head
#pipe-%>%

#Display age,occupation,latitude and order by latitude and show 10 records  
a1%>%
  select(Age,Occupation,latitude)%>%
  arrange(latitude)%>%head(10)

#display age,educational qualification and select student with no income







