#Functions in R
#A set of statements which are organized together to perform a specific task.
#Function types: User Defined function and inbuilt function
#Syntax: fun_name<-function(arg1,arg2,...argn)

#Function without arguments
f1<-function(){         #Body of function in curly brackets
  cat("R Programming")
}

f1()                    #Function call


#Function with arguments
f2<-function(x,y){
  res<-x+y
  cat("Addition of x and y is",res)
}

f2(2,5)                 #Positional Arguments


#Keyword Argument
f3<-function(x,y,z){
  res<-x+y+z
  cat("Addition of x,y and z is",res)
}

f3(z=15,x=2,y=5)        #Keyword Arguments


#Default Argument
f4<-function(x=10,y,z){
  res<-x*y*z
  cat("Product =", res)
}

f4(,2,5)               #Leave the value of the variable empty when calling if it is already defined
                       #If the values will be given during calling then the values will be overwrite

#Loop inside Function
#Square of first 5 numbers
f5<-function(){
  for(i in 1:5){
    cat(i^2,' ')
  }
}

f5()


#Find the square root of 1 to 10 by function
f6<-function(){
  for(i in 1:10){
    cat("Square Root of",i,"is",i^(1/2),"\n")
  }
}

f6()


#Find the volume of cube by taking input from user
f7<-function(x){
  store<-x^3
  cat("Volume of cube with side =",x,"is",store)
  }
{
x<-as.numeric(readline("Input a number"))
f7(x)
}


#Inbuilt math function
#absolute()
abs(-10)           #Returns absolute value removing positive or negative
sqrt(16)           #Returns square root
ceiling(-10.9)     #Returns the round up highest value 
floor(10.8)        #Returns the round up smallest value
trunc(10.1)        #Returns only the actual value removing decimal
#Trigonomeric functions
log(2)
sin(45)
tan(45)            #Value taken as radian
tan(45*pi/180)     #Convert radian to degree #(value*pi/180)
