#Excercise 1
A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)
A
B
class(A)
class(B)
C<-A+B
C
D<-A-B
D


#Excercise 2 - Scalar Multiplication
3 * A
a<-6
aA <-a * A
aA


#Excercise 3
diag(c(4,1,2,3),4,4)


#Excercise 4
b=c(7,4)
b
r <- A * b
r


#Excercise 5
t(A)


#Excercise 6
Ainv<-solve(A)
Ainv

#Excercise 7
X<-Ainv * b
X


#Excercise 8
x<-c(2,5,9)
y<-c(3,6,8)          
z<-c(4,7,1)
AA<-cbind(x,y,z)
rownames(AA) <- c("a", "b", "c")
AA


#Excercise 9
v<- 1:12
v1<-matrix(v,nrow=4,ncol = 3,dimnames = list(c("a","b","c","d"),c("x","y","z")))
v1
matrix(v,nrow=4,ncol = 3,dimnames = list(c("a","b","c","d"),c("x","y","z")), byrow = TRUE)


#Excercise 10
subv <- v1[2:4,]        
subv

#Excercise 11
3*AA
AA + subv
AA - subv
A+v1  # error: Non-conformable arrays: the dimensions of the two do not match
