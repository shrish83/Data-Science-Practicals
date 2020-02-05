#Ex1
Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")
df <- data.frame(Age, Name, Gender)[1:2,]
df


#Ex7
iris
df1 <- iris[sapply(iris, is.numeric)]
df1


#Ex3
df
df_new <- df[,c(2,1,3)] 
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


#Ex2
df <- data.frame(Age, Name, Gender)
df
df_new <- df[,c(2,1,3)] 
df_new




#Ex8
data(iris) v   ##doubt
iris_mean <- tapply(list(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width), iris$Species,mean)
iris_mean
