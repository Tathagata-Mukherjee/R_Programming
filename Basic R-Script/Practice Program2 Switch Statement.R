#Find odd or even number using switch statement

{
  a<-as.numeric(readline("Enter a number \n"))
  temp=0
  if(a%%2==0){
    temp='1'
  }else
  {
    temp='2'
  }
  result<-switch(temp, '1'=paste("Number is Even"), '2'=paste("Number is odd"))
  result
}

#OR

{
  a<-as.numeric(readline("Enter a number \n"))
  temp<-readline("Press o for Odd or Press e for Even")
  res<-switch(temp,'o'=paste("Entered number is Odd", a%%2==0), 'e'=paste("Entered number is Even", a%%2!=0))
  res
}