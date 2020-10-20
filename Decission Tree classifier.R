#Load data
df=read.csv("C:/Users/Iris.csv")
#view data
df
#summarize the data
summary(df)
#Install ca tools to split the data
library(caTools)
#setting seed
set.seed(0)
# splitting data into train and test with 80 and 20 percentage 
split=sample.split(df,SplitRatio = 0.8)
trainc=subset(df,split==TRUE)
testc=subset(df,split==FALSE)

# Decision tree Algorithm (Classifier)
library(rpart)
library(rpart.plot)
classtree = rpart(formula= Species~., data= trainc,method = 'class',control=rpart.control(maxdepth=3))
rpart.plot(classtree,box.palette = 'RdBu', digits = -3)
testc$pred = predict(classtree,testc, type="class")
table(testc$Species,testc$pred)



########################## Task3 by Seeram Moulidhar ###############################
