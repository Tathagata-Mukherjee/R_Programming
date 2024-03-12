# Iteration
# For loop
a<-c('cse','it','eee','ece','civil')
a
for (x in a){
  cat(x)
}

b<-c(2:15)
for(x in b){
  cat(x*2," ")
}

l1<-list(2:20)
for(x in l1[[1]]){
  if(x %% 2 == 0){
    cat(x," ")
  }
}
for(i in seq(1,10)){
  print(i)
}

#for printing twice
for(a in seq(11,50)){                 # seq() is used and rep( ) is used in block
  print(rep(a,2))
}

for(a in rep(seq(11,20),each=2)){     # seq() is used and rep() is used in the loop statement
  print(a)
}

#break statement for terminating iteration

for(a in seq(21,30)){
  if(a==28){
    break
  }
  print(a)
}

#next statement . For contintuing iteration
v1<-(20:80)
for(i in v1){
  if(i==65){
    next
  }
  print(i)
}


#print odd number in v1=c(23,45,66,78,99,100)
v1<-c(23,45,66,78,99,100)
for(i in v1){
  if(i %% 2 == 0){
    next
  }
  print(i)
}

#While loop
#print(1 to 10)
#initialization, condition, updatd , variable incrementation/decrementaion

i=1
while(i<=10){
  print(i)
  i=i+1
}

#Nunber should be printed less  than entered by user
{
n<-as.numeric(readline('enter a number: '))
i=1
while(i<=n){
  print(i)
  i=i+1
}
}

#display the cube number upto n integar
{
n<-as.numeric(readline('Enter a number: '))
i=1
while(i<=n){
  cat("CUbe of",i,"is",i*i*i,'\n')
  i=i+1
}
}

#display the n terms of odd numbers and their sum
{
n<-as.numeric(readline("Enter a  number: "))
i=1
j=1
sum=0
while(i<=n){
    cat(2*i-1," ")
    sum=sum+(2*i-1)
    i=i+1
}
cat("Sum of the odd numbers is : ",sum)
}

#Display the sum of square of natural number and their sum

i=0
sum =0
while(i<=10){
  cat(i," ")
  sum=sum+i
  i=i+1
}
cat("sum of first 10 natural number is : ",sum)

#Repeat loop - No condition , No sequence
i=1
repeat
{
  if(i==10){
    break
  }
  print(i)
  i=i+1
}

#display the cube of number upto n integar with repeat loop
{
n<-as.numeric(readline("ENter a number to find cube: "))
i=1
repeat
{
  if(i==n+1){
    break
  }
  cat(i*i*i," ")
  i=i+1
}
}
