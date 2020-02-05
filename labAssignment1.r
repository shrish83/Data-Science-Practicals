#1
x<-c(1,6,6,9,6,7,6,2)
length(x)
length(x[x==6])

y<-c(1,NA,6,9,3,NA,NA,7,NA,23,NA)
length(y[y=="NA"])

#2
a <- c(4,6,5,7,10,9,4,15)
c(4,6,5,7,10,9,4,15) < 7

#3
p <- c (3, 5, 6, 8)
q <- c (3, 3, 3)
p+q

#4
z <- 0:9
digits <- as.character(z)
as.integer(digits)
as.character(z)

#5
d <- c(1,2,3,4)
(d+2)[(!is.na(d)) & d > 0] -> k
k

#6
x1 <- c(2, 4, 6, 8)
y1 <- c(TRUE, TRUE, FALSE, TRUE)
sum(x1[y1])
