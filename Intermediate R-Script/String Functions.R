#String Function
#Find the length of string


a<-"Programming"
nchar(a)             #Find length of a string
b<-"R Programming"
nchar(b)

#Join two strings
s1<-"Python"
s2<-"Programming"
paste(s1,s2)

#Case of String
toupper(s1)
tolower(s2)

#MultiLine String
ms<-"Hello,
Welcome to
R Programming"
ms                  #Output --> Hello,\nWelcome to\nR Programming
cat(ms)             #Output --> Hello,
                            #   Welcome to
                            #   R Programming

#SubSring
#substr(input,start,stop)
str<-"Welcome to R Programming"
substr(str,1,7)
substr(str,14,24)

s<-c("Python",'C',"C++","Java")
substr(s,1,4)

#grep(pattern_in_a_string, string_name)    #Return the position of substring
grep("Pyth",s)
grep('C',s)

grep("Program", str)

#paste(substring,string,delimiter='')
paste("Hi, Friends,",str,"!!!!")

#Replacement
#sub(substring,replacement,input)
sub("R Programming","Python Programming",str)
sub("Python",'R',s)

#Splitting String
strsplit(str,'o')
strsplit(s,'C')

#Date and Timestamp
date()
Sys.Date()       #System date
Sys.time()       #System Time
Sys.timezone()   #System Timezone
 