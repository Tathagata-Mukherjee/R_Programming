#Import DataSet and Perform various functions

getwd()
setwd("D:/New Subjects/R Script/R-Programming/DataSet")  #Give the file path where the file is stored
a1<-read.csv("diabetes.csv")                             #Give file name
a1

#Click Environment in the right terminal and find the variable where the file is stored, click on the folder icon
#to get the view of the dataset on another file

View(a1)     #Open in a new file

nrow(a1)
ncol(a1)

str(a1)      #Structure

summary(a1)  #Find statistics on all columns

names(a1)    #Check all the variables/ column names

dim(a1)      #Check dimensions

grep("Age", colnames(a1))       #Check the location of specific column
grep("BloodPressure", colnames(a1))

#Finding tuples
a2<-head(a1)     #By default it displays 6 rows
View(a2)

head(a1,2)       #To retrieve certain no. of rows

tail(a1)         #By default it displays 6 rows from the last

a3<-tail(a1,20)  #Retrieve last 20 rows
a3
