a<-read.csv(file.choose())
View(a)

#import DataSet student.csv

#1.create missing values for  rollno 1,4 with marks
  
a[1,3]<-NA
a[4,3]<-NA

#2.create missing record for rollno 6

a[6, ]<-NA

#3.find the location and count of missing values

is.na(a)
sum(is.na(a))

#4.identify the missing value in name and marks

colSums(is.na(a))

#5.find nan values

is.nan(a)

#6.remove all missing values

na.exclude(a)

#7.visualize the dataset including missing values

library(visdat)
vis_miss(a)