#Find the square root, cube root by taking input from user with switch statement

{
a<-as.numeric(readline("Enter a number \n"))
print("Enter 1 ------> Square Root")
print("Enter 2 ------> Cube Root")
b<-as.numeric(readline("Enter the operation to perform"))
result<-switch(b, '1'=a^(1/2), '2'=a^(1/3))
result
}