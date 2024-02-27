#Conditional Statement
#if, else, else lf ladder, nested if

age<-14
age<-readline("Enter a age")      #Readline take character as input by default

#----------------

{
age<-as.numeric(readline("Enter a age"))
if(age>=18)
{
  print("Eligible for voting")
}else
{
  print("Not eligible for voting")
}
}

#----------------

#Searching in conditional statement
y=c('R',"is",'a',"Statistical","Programming","Language")
y
{
z<-readline("Enter a matched String \n")
if(z %in% y)
{
  print("Yes!, Matched")
}else
{
  print("0_0, Not Matched")
}
}

#----------------

#Check if the no. is positive or negative taking user input

{
num<-as.numeric(readline("Enter a number \n"))
if(num<0)
{
  print("Its a negative number")
}else
{
  print("Its a positive number")
}
}

#OR

{
  num<-as.numeric(readline("Enter a number \n"))
  if(num<0)
  {
    paste(num,"<- Its a negative number")
  }else
  {
    paste(num,"<- Its a positive number")
  }
}

