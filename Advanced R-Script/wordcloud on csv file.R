imp<-readLines(file.choose())
imp

st<-Corpus(VectorSource(imp))
st

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

#Step2: Text Cleaning
#Then Remove whitespaces,punctuations,numbers,stopwords,casesensitive
stopwords("english")
st<-tm_map(st,tolower)
st<-tm_map(st,stripWhitespace)
st<-tm_map(st,removePunctuation)
st<-tm_map(st,removeNumbers)
st<-tm_map(st,removeWords,stopwords("english"))

#Step3: Text Transformation - transform special characters by space
space<-content_transformer(function(x,pattern)gsub(pattern," ",x))
st<-tm_map(st,space,'?')
st<-tm_map(st,space,',')
st<-tm_map(st,space,'@')
st<-tm_map(st,space,'.')
st<-tm_map(st,space,'_')
st<-tm_map(st,space,'/')
st<-tm_map(st,space,'-')
st<-tm_map(st,space,':')

#Text Stemming: Stemming Words "moving","moved"
st<-tm_map(st,stemDocument)

#Step4: Find Frequency
st<-Corpus(VectorSource(imp))
st
st<-TermDocumentMatrix(st)     #Output in Table
st
m1<-as.matrix(st)
m1

m1<-sort(rowSums(m1),decreasing=TRUE)
m1

#Visualize by using wordmap
#input as dataframe
d<-data.frame(word=names(m1),freq=m1)
d

library(wordcloud)
wordcloud(words=d$word,freq=d$freq,min.freq=3,max.words=500,random.order=FALSE,rot.per=0.35,colors=brewer.pal(8,"Dark2"))
