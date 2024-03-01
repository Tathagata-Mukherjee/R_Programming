#Iteration
#For Loop

for(i in seq(1,10)){
  print(i)
}

for(a in seq(11,50,by=2)) {
  print(a)
}

#Displaying Range two times
v1<-c(11:20)
for(b in rep(v1,each=2)){
  print(b)
}

#OR

for(b in seq(11,20)){
  print(rep(b,2))
}

# -----------------------

v2<-c('Welcome','to','R','Programming')
v2
for(j in rep(v2,every=3)){
  print(j)
}