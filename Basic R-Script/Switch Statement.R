#R switch statement
#It is a multiway branch statement
#Provide an easy way to dispatch execution for different part of the code
#This code is based on the value of the expression
#if expression type is character string
#The string is matched to the listed cases
#If there is more than one match
#the first match element is used
#No default case is available
#If case is matched, an unnamed case is used
#Two types based on index, based on matching values


#Type 1: Based on indexing
#switch(expression as input,case1,case2,...)

#Indexvalue   1  2  3  4  5  6
z<-switch(2, 56,58,69,36,23,11)
z                                 #58 is printed as it is on 2nd index

z<-switch(8, 56,58,69,36,23,11)
z                                 #Prints NULL as no value in 8th index


#Type 2: Based on matching values
#switch(expression as character,case1,case2,...,caseN)

#Example1
z1<-'4'
z2<-switch(z1,'4'='Dhoni', '6'='Sachin', '12'='Saurabh')
print(z2)

#Example2
ax=1
bx=3
e<-switch(ax+bx, 'a', 'b', 'c', 'd')
e                                    #Output 'd' as 1+3=4th index


#Program on calculator by using matching values with switch statement

{
num1<-as.numeric(readline("Enter First Number \n"))
num2<-as.numeric(readline("Enter Second Number \n"))
print("Enter +,-,*,/ to perform the respective operation")
oper<-readline("Enter Arithmetic Operation to perform \n")
output<-switch(oper, '+'=num1+num2, '-'=num1-num2, '*'=num3*num2, '/'=num3/num2)
output
}

#OR

{
  num1<-as.numeric(readline("Enter First Number \n"))
  num2<-as.numeric(readline("Enter Second Number \n"))
  print("Enter 1,2,3,4 for +,-,*,/ to perform the respective operation")
  oper<-as.numeric(readline("Enter Arithmetic Operation to perform \n"))
  output<-switch(oper, '1'=num1+num2, '2'=num1-num2, '3'=num3*num2, '4'=num3/num2)
  paste("Output of two numbers is:", output)
}

