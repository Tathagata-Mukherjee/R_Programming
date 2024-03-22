library(readxl)
library(sqldf)
a<-read_excel(file.choose())
View(a)


#1.Find the total sales.

sqldf('select sum(Sales) from a')

#2.Find the country of least sales.(*)

sqldf('select * from a order by sales limit 1 ')

#3. Display the country sales in North region.(*)

sqldf('select * from a where Region = "North"')

#4. Display all the data according to the highest sales.(*)

sqldf('select * from a order by Sales desc limit 1 ')

#5. Find the total number of countries named as nations participated in sales.(*)

sqldf('select distinct country as Nations from a ')

#6. Find the sales of East region more than 500.(*)

sqldf('select * from a where Region = "East" and sales > 500 ')

#7. display country,region and sale who'average sales<800 based on region sorted by the lowest.

sqldf('select country,Region,Sales from a where avg(Sales)<800 order by Region ')

#8. Display country and region involved in Either North or West as EW_region.

sqldf('select country, Region as EW_region from a where Region = "North" or Region = "West" ')

#9. find the country which is not participated in North or South sales.(*)

sqldf('select * from a where Country not in (select distinct country from a WHERE Region IN ("North", "South"))')

#10.create different datasets d1,d2 for country named by U, and last name by k.

d1<-sqldf('select Country from a where Country like "U%" ')
d2<-sqldf('select Country from a where Country like "%K" ')
d1
d2

#11.find the countries participated in d1 and d2.

sqldf('select * from d1')
sqldf('select * from d2')

#12.d1 and d2 countries are not participated in sales further. Extract all the data and named by no_sales dataset.

no_further_sales<-sqldf('select distinct country from d1 union all select distinct country from d2')
no_further_sales

#13.find the total observations and dimensions of no_sales. 

sqldf('SELECT COUNT(*) AS total_observations, COUNT(*) AS dimensions FROM a')