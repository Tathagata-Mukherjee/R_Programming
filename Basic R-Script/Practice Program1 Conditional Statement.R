#Check if the the number is even or odd on the basis of positive or negative

{
  num<-as.numeric(readline("Enter a number \n"))
  if(num>0 && num%%2==0)
  {
    cat(num, "is a positive and even number")
  }else if(num>0 && num%%2!=0)
  {
    cat(num, "is a positive and odd number")
  }else if(num<0 && num%%2==0)
  {
    cat(num, "is a negative and even number")
  }else if(num<0 && num%%2!=0)
  {
    cat(num, "is a negative and odd number")
  }else
  {
    print("Not identified")
  }
}