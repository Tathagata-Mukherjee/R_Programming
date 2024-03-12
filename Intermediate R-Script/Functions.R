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

f4( ,2,5)