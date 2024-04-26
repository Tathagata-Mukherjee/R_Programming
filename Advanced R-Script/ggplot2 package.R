install.packages("ggplot2")

library(ggplot2)

#grammer of graphics
#layer1 - data layer where dataset is added
#layer2 - aesthetics layer
#maps variables in data onto species such as x and y coordinates

p<-ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))    #layer2
p

#layer3 - geometries layer
#i.e, which type of graph you want to plot

p+geom_point()

#layer4 - facet layer/optional
#make subplots by facet layer

p+geom_point()+facet_wrap(~Species)

#layer5 - statistical layer allows to plot statistical layer

p+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")

#layer6 - coordinate layer adjust the coordinates

p+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")+coord_cartesian(xlim=c(4,8),ylim=c(2,5))

#layer7  

p+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")+coord_cartesian(xlim=c(4,8),ylim=c(2,5))+theme(axis.text=element_text(color="red"))



#heatmap
#created by heatmap()
#accept input as matrix

mtcars
d<-as.matrix(mtcars)
d

#normalizing the matrix by scaling function
heatmap(d,scale="column")

#remove dendogram
heatmap(d,Rowv = NA,Colv = NA,scale="column")

#coloring by color palette
heatmap(d,Rowv = NA,Colv = NA,scale="column",col=cm.colors(256),xlab = "Variables",ylab = "Cars",main = "HeatMap")
