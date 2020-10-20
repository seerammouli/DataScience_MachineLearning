#Insatll required libraries by using command install("Required library")

#Load required libraries
library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)


#Load data in a variable data
data= read.csv("C:Sparks/iris.csv")
#view data
data
#To view summary
summary(data)
#select required columns and store them in a new variable
mydata = select(iris, c(1,2,3,4))
#wss plot
wssplot = function(data, nc=15 , seed=1234)
{
  wss=(nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[1] -sum(kmeans(data, centers -1)$withinss)
  }
  plot(1:nc.wss.type="b",xlab = "Number of clusters", ylab ="within groups sum of squares")
}  
#plotting between our data and wss plot
wssplot(mydata)
# using k means Unsupervised Learning Algorithm
KM = kmeans(mydata,2)

# plotting our clusters in a graph
autoplot(KM.mydata.frame = TRUE)
# cluster centers or required result
KM$centers

############# Task 2 By Seeram Moulidhar ###############################