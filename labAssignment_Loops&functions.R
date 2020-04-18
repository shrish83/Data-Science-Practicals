#q3
num <- as.integer(readline(prompt = " Enter a number: "))
if(num < 0){
  print("Enter a positive number!")
}else{
  s = (num * (num + 1))/2
  print(s)
}


#q4
for (i in 1:12) {
  for (j in 1:10) {
    print(paste(i,'x',j,'=',i*j))
  }
}


#q5
max_list <- function(l){
  return(max(unlist(l)))
}
lst <- list(1,5,34,87,955,376,58,3,22,98,34,21)
largest <- max_list(lst)
largest


#q6
a <- list(1:10)
sum(unlist(a))
cumsum(unlist(a))

#function
s<-0
a1 <- unlist(a)
len_a1 <- length(a1)
for(i in 1:len_a1)
{
  s = s + a1[i]
  print(s)
}



#q8
#Linear Search
a <- c(1,43,54,23,21,3,6,87,64,34,90,19,22,100)
lSearch <- function(n,lt){
  x <- 1
  for(i in lt){
    if(n == i){
      cat("Element at position: ",x)
      break
    }
    x<-x+1
  }
  if(x>length(lt)){
    print("List exhausted! Element not Found.")
  }
}
num <- as.numeric(readline("Enter a number to be searched: "))
lSearch(num,a)


#q9
#Binary Search
a <- c(23,34,45,65,68,79,84,88,90,100)
num <- as.numeric(readline("Enter a number to be searched: "))
binSearch<-function(num,a){
  l<-1
  u<-length(a)
  f<-0
  while(l<=u){
    m<-as.integer(round((l+u)/2))
    if(num == a[m]){
      return(1)
    }else if(num < a[m]){
      u <- m-1
    }else { l <- m+1}
  }
  return(0)
}
flag <-binSearch(num,a)
if(flag == 1){
  print("Number Found!")
}else {print("Not Found!")}


#18
v <- c(Inf,1,57,NaN,-34,0,NaN,22,-7,40,NA,NA,Inf,34:38)

checkNum <- function(vec){
  if(!is.finite(vec)){
    return(NA)
  }
  if(vec %% 2 == 0){
    return(TRUE)
  }else{
    return(FALSE)
  }
} 

print(sapply(v,checkNum))



