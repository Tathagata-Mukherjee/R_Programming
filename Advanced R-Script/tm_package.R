#PACKAGES

#tm   (textmining)
#snowballc   (text stemming)
#wordcloud
#rcolorbrewer

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

w<-readLines(file.choose())    #select the text file
w

#Step 1: Creating corpus file for making data structured format 
#VectorSource: Processing the data in character variable
w1<-Corpus(VectorSource(w))
w1

#Step2: Text Cleaning
#Then Remove whitespaces,punctuations,numbers,stopwords,casesensitive
stopwords("english")
w1<-tm_map(w1,tolower)
w1<-tm_map(w1,stripWhitespace)
w1<-tm_map(w1,removePunctuation)
w1<-tm_map(w1,removeNumbers)
w1<-tm_map(w1,removeWords,stopwords("english"))

#Step3: Text Transformation - transform special characters by space
tospace<-content_transformer(function(x,pattern)gsub(pattern," ",x))
w1<-tm_map(w1,tospace,'?')
w1<-tm_map(w1,tospace,',')
w1<-tm_map(w1,tospace,'@')
w1<-tm_map(w1,tospace,'.')
w1<-tm_map(w1,tospace,'_')
w1<-tm_map(w1,tospace,'/')
w1<-tm_map(w1,tospace,'-')
w1<-tm_map(w1,tospace,':')

#Text Stemming: Stemming Words "moving","moved"
w1<-tm_map(w1,stemDocument)

#Step4: Find Frequency
w1<-Corpus(VectorSource(w))
w1
w1<-TermDocumentMatrix(w1)     #Output in Table
w1
m1<-as.matrix(w1)
m1

m1<-sort(rowSums(m1),decreasing=TRUE)
m1

#Visualize by using wordmap
#input as dataframe
d<-data.frame(word=names(m1),freq=m1)
d

library(wordcloud)
wordcloud(words=d$word,freq=d$freq,min.freq=3,max.words=500,random.order=FALSE,rot.per=0.35,colors=brewer.pal(8,"Dark2"))
