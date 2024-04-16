#Question 1
store<-data.frame(StoreID=c(1,2,3,4), ProductID=c(101,102,103,104), SalesQuantity=c(33,56,12,71),
                 SalesRevenue=c(2762,20108,986,33020))
store

apply(store[4],2,sum)

tapply(store$SalesQuantity, store$ProductID, mean)



#Question 2 
volume<-function(l,b,h){
  v=l*b*h
}

input<-function(){
  l<-as.integer(readline("Enter the length of the classroom from 15 to 25 "))
  if (l<15 || l>25) {
    paste("Length must be between 15 and 25 \n")
  }
  b<-as.integer(readline("Enter the breadth of the classroom from 10 to 20 "))
  if (b<10 || b>20) {
    paste("Breadth must be between 10 and 20")
  }
  h<- as.integer(readline("Enter the height of the classroom from 20 to 30 "))
  if (h<20 || h>30) {
    paste("Height must be between 20 and 30 \n")
  }
  volumeofclass<-volume(l,b,h)
  paste("Volume of the classroom:", volumeofclass)
}

input()

#Question 3
#Have to take dplyr package for the implementation
library(datasets)
data("CO2")
View(CO2)

min(CO2$conc)
max(CO2$conc)
min(CO2$uptake)
max(CO2$uptake)

library(sqldf)

sqldf('SELECT min(conc) FROM CO2 WHERE TYPE = "Quebec"')
sqldf('SELECT max(conc) FROM CO2 WHERE TYPE = "Quebec"')
sqldf('SELECT min(uptake) FROM CO2 WHERE TYPE = "Quebec"')
sqldf('SELECT min(uptake) FROM CO2 WHERE TYPE = "Quebec"')

sqldf('SELECT min(conc) FROM CO2 WHERE TYPE = "Mississippi"')
sqldf('SELECT max(conc) FROM CO2 WHERE TYPE = "Mississippi"')
sqldf('SELECT min(uptake) FROM CO2 WHERE TYPE = "Mississippi"')
sqldf('SELECT min(uptake) FROM CO2 WHERE TYPE = "Mississippi"')

sqldf('SELECT Plant FROM CO2 WHERE Plant LIKE "%Qn%" ')

sqldf('SELECT Plant, Treatment FROM CO2 WHERE conc > 100')

CO2$PerConc <- 100










