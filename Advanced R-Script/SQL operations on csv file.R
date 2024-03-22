install.packages()
#or rightside bottom window.. packages->install->give_name_of_package
                                                 # sqldf


library(sqldf)   #Run it first


a<-read.csv(file.choose())
View(a)

sqldf('select count(*) from a')
sqldf('select * from a where marks>80')
sqldf('select * from a where marks<50')
sqldf('select name from a where name like "v%"')
sqldf('select name from a where name like "v%s"')
sqldf('select * from a order by marks desc')
sqldf('select avg(marks) from a')
sqldf('select max(marks) from a')
sqldf('select * from a limit 3')
sqldf('select name,marks from a where roll_no = 4')
sqldf('select name as NAME from a')
sqldf('select sum(marks) from a')
sqldf('select * from a order by name')
