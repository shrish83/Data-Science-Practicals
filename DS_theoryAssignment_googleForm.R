#1
## Formal Arguments: x,y : Because these hold the actual value passed and act as containers.
## Free Variables: z : Because it is not defined globally or locally within a function or even as an argument.
## Local Variables: a : Defined inside a function f and not accessible outside of it.
## Global variable : b : Defined outside a fucntion and hence accessible everywhere.
## No error is thrown because the code is loaded first as it is in R due to a concept called LAZY LOADING. It will compile and execute ony when invoked and then throw errors if any. 

#2
v<-c(1,6,9,7,5,4)
m<-matrix(v,3)  #(Column Wise by default)
m

#3
df<-data.frame(a=c(1,2,3),b=c(4,5,6),c=c(7,8,9))
df$b
df[,2]

#4
df[,3]  #[1] 7 8 9

#5
df[1,]  #  a b c
      #  1 1 4 7

#6
## $____$
## $\sum_{i=1}^nX_i$ appears inline.

#7
df<-iris
barplot(tapply(df$Sepal.Length,df$Species,mean),xlab = "Species",ylab = "Average Sepal Length", col = c("Blue","Red","Yellow"))

#8
p<-prop.test(100,300,p = 0.3)
p
##p value is 0.231, which is greater than the 5% significance level. Hence we accept the hypothesis i.e. we can say p = 0.3 with 95% confidence

#9
## If the value of p is less than 0.02 which is less than 0.05(or 5% confidence level), then we reject the null hypothesis, and conclude that there's a significant difference between actual and observed probabilities

#10
paste("Data","Science","in","R","Programming",sep = "_")

#11
# %% :- modulus operator. It returns the remainder on dividing A by B.
# %/% :- numerical division operator. It returns the quotient on dividing A by B.
