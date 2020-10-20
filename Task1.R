#Load data in a variable df
df= read.csv("C:/Users/TEMP.LAPTOP-12IADNJ8.009/Desktop/New folder/Task1.csv", header = TRUE)
#view data
df
#Applying Linear Regression to the model
model=lm(Scores~Hours, data = df)
#Checking for Intercepts
summary(model)
#To predict the score if a student studies for 9.25 hours/day
a=data.frame(Hours=9.25)
#To evalute our prediction
result=predict(model,a)
#Final result
result


## TASK 1 BY SEERAM MOULIDHAR  ##