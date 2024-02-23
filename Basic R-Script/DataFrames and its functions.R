employee<-data.frame(E_id=c(11,12,13), Name=c("ABc","XYZ","PQR"), Position=c("Manager","Head","AO"))
employee

department<-data.frame(D_id=c("D101","D102","D103"), D_Name=c("Computing","Business","Agriculture"), Block=c("B-34","B-12","B-53"))
department

combined<-cbind(employee,department)
combined

#Change the B-12 to B-46 
combined[2,6]<-"B-46"
combined
#OR
combined$Block[2]<-"B-46"
combined

#Delete the record of E_id 13
combined[-3, ]

#Display E_id, Name who are working in business
#disp<-c(combined[2,1], combined[2,2])                 #Only displaying the output but not the header
#disp

new<-combined[2,c(1,2)]
new

#Creating a naming list voting P1,P2,P3 with age 45,68,77 if gone for voting TRUE,FALSE,TRUE
#people<-c("P1","P2","P3")
#age<-c(45,68,77)
#vote<-c(TRUE,FALSE,TRUE)
#names(c(people,age,vote))<-c("People","Age","Vote")

voting<-list(c("P1","P2","P3"),c(45,68,77),c(TRUE,FALSE,TRUE))
names(voting)<-c('Name','Age','Voted')
voting

# Convert to dataframe
voting_df <- data.frame(Name = voting$Name, Age = voting$Age, Voted = voting$Voted)

# Display the dataframe
print(voting_df)