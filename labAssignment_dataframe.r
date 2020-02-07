#Ex1
Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")
df <- data.frame(Age, Name, Gender)[1:2,]
df



#Ex2
df <- data.frame(Age, Name, Gender)
df
df_new <- df[,c(2,1,3)] 
df_new


#Ex3
df
df_new <- df[,c(2,3,1)] 
df_new



#Ex4
df <- data.frame(Age, Name, Gender)
df_new <- df[, 2:3] 
df_new


#Ex5
df <- data.frame(Age, Name, Gender)
names(df)[names(df) == "Name"] <- " First Name"
df



#Ex6
df <- data.frame(Age, Name, Gender)
df_Age <- df[order(df$Age, decreasing = TRUE),]
df_Age
df_Age[df_Age$Age == min(df_Age$Age),]



#Ex7
iris
df1 <- iris[sapply(iris, is.numeric)]
df1



#Ex8
data(iris) 
iris1 <- as.list(iris)
iris_mean <- tapply(iris1$Sepal.Length, iris1$Species,mean)
iris_mean <- tapply(iris1$Sepal.Width, iris1$Species,mean)
iris_mean <- tapply(iris1$Petal.Length, iris1$Species,mean)
iris_mean <- tapply(iris1$Petal.Width, iris1$Species,mean)
iris_mean



#Q17_ExtendedPracticalList
iris                      
df2 <- iris[sapply(iris, is.numeric)]
df2
write.csv(df2, "C:\\Users\\HP\\Documents\\R\\DataScience_5726\\MyData.csv", row.names = F)
sapply(df2,mean)



#Q22_ExtendedPracticalList
install.packages("reshape")
library(reshape)
df <- data.frame(Age, Name, Gender)
melt_data <- melt(df)
melt_data
cast_data <- cast(melt_data)
cast_data
