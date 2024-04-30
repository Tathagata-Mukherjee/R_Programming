f<-read.csv(file.choose())
f

f1<-Corpus(VectorSource(f))
f1

stopwords("english")
f1<-tm_map(f1,tolower)
f1<-tm_map(f1,stripWhitespace)
f1<-tm_map(f1,removePunctuation)
f1<-tm_map(f1,removeNumbers)
f1<-tm_map(f1,removeWords,stopwords("english"))

tospace<-content_transformer(function(x,pattern)gsub(pattern," ",x))
f1<-tm_map(f1,tospace,'?')
f1<-tm_map(f1,tospace,',')
f1<-tm_map(f1,tospace,'@')
f1<-tm_map(f1,tospace,'.')
f1<-tm_map(f1,tospace,'_')
f1<-tm_map(f1,tospace,'/')

f1<-tm_map(f1,stemDocument)
f1<-Corpus(VectorSource(f))

f1<-TermDocumentMatrix(f1)
f1

f2<-as.matrix(f1)
f2<-sort(rowSums(f2),decreasing = TRUE)
f2
f3<-data.frame(word=names(f2),freq=f2)
f3

library(wordcloud)
wordcloud(words=f3$word,freq = f3$freq,min.freq = 3,max.words = 500,random.order = FALSE,
          rot.per = 0.35,colors = brewer.pal(8,"Dark2"))
