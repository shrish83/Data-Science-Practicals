#Ex 1
p <- c(2,7,8)
q <- c("A", "B", "C")
x <- list(p, q)
x[2]


#Ex 2
w <- c(2, 7, 8)
v <- c("A", "B", "C")
x <- list(w, v)
x[[2]][1]<-"K"


#Ex 3
a <- list ("x"=5, "y"=10, "z"=15)
sum(unlist(a))


#Ex4
Newlist <- list(a=1:10, b="Good morning", c="Hi")
Newlist$a <- Newlist$a + 1
Newlist


#Ex5
b <- list(a=1:10, c="Hello", d="AA")   ##doubt
b$a[c(c(1,3:10))]


#Ex6
x <- list(a=5:10, c="Hello", d="AA")
x$z <- "NewItem"
x


#Ex7
y <- list("a", "b", "c")
names(y)<-list("one","two","three") 
y


#Ex8
x <- list(y=1:10, t="Hello", f="TT", r=5:20)
length(x$r)


#Ex9
string <- "Grand Opening"
typeof(string)         
strsplit(string, "\\s+")
str<-unlist(strsplit(string, "\\s+"))
str
str<-as.list(unlist(strsplit(string, "\\s+")))
str


#Ex10
y <- list("a", "b", "c")
q <- list("A", "B", "C", "a", "b", "c")  #doubt
q1 <- unlist(q)
y1<- unlist(y)
ans <- as.list(q1[q1!= y1])
ans

#Ex11
A=letters[1:4]
B=letters[5:10]
C=letters[11:15]
D=c(1:10)
E=c(20:5)
z <- list(x = list(A,B,C) , y = list(D,E) )
z
View(z)

#Ex11 part1
length(z$x)
length(z$y)
length(unlist(z$y))

z$x[[2]][3]

z$y[[1]][5]


#Ex12   #same as Ex10
y<- list("a", "b", "c")
q<- list("A", "B", "C", "a", "b", "c")
y1<- unlist(y)
q1<- unlist(q)
ans1 <- as.list(q1[q1 != y1])
ans1








