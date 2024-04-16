#tidyr package
#used for reshaping data

library(tidyr)
library(readxl)
a<-read_excel(file.choose())
View(a)

#gather(input,key,value)
#used for changing columns into rows