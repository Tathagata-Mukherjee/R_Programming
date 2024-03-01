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

