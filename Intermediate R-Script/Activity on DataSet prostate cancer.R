#Activity-dataset on prostate cancer


getwd()
setwd("D:/New Subjects/R Script/R-Programming/DataSet") 
activity<-read.csv("Prostate_cancer.csv")
View(activity)

#1.find number of rows

nrow(activity)

#2.find number of columns

ncol(activity)

#3.find total observations

str(activity)

#4.find dimension of given dataset

dim(activity)

#5.find minimum radius

min(activity$radius)

#6.find the average value of area.

mean(activity$area)

#7.extract id 18,22,56,45 and symmetry,fractional_dimension.

activity[c(18,22,56,45),c("symmetry", "fractal_dimension")]

#8.find area less than 600.

subset(activity, area<600)
nrow(subset(activity, area<600))   #Display the number of row return from the condition

#9.find total number of id whose diagnosis_result is M

nrow(subset(activity, diagnosis_result == 'M'))

#10.find the range value of smoothness
#11.find compactness and symmetry less than 0.158
#12.add area and radius and make column new_dim.
#13.find the position of column texture and symmetry.
#14. retrive last 20 ids.
#15. change the radius of 1 to 10 id  by 100 and find mean use fix()