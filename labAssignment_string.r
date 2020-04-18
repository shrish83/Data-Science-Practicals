#19
vec_letters<-letters
vec_letters
vowels<-c('a','e','i','o','u')
triangular_seq<- vector(mode = "numeric",length = 20)

i<-1
triangular_letters <- function(n){
  for(i in 1:n){
    triangular_seq[i] <- ((i*(i+1))/2)
    i=i+1
  }
  return(triangular_seq)
}

triangular_seq <- triangular_letters(20)
triangular_seq

for (i in 1:20) {
  if(vec_letters[i] %in% vowels){
    print(triangular_seq[i])
  }
}


#20
middle_name <- c("K","Kr","Kumar")
df <- data.frame(name=c("A K Singh","A Kumar Chaudhary","Rita Arora","M L Aggarwal"))

mid_name <- function(d){
df1 <- strsplit(as.character(d$name)," ")
df1
l <-length(df1)
i<-1
for (i in 1:l) {
str <- strsplit(df1[[i]]," ")
if(str[[2]] %in% middle_name){
  print(as.character(str))
}
i=i+1
}
}
mid_name(df)


#21
x<- c("Swan swam over the pond, Swim swan swim!"," Swan swam back again - Well swum swan!")
sanitize<- function(n){
  w = gsub("[^a-z ]", "", n, ignore.case = TRUE)
  return(strsplit(w, " ")[[1]])
}
w <- sapply(x, sanitize, USE.NAMES = FALSE)
w


#22
install.packages("reshape")
library(reshape)
Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")
df <- data.frame(Age, Name, Gender)
melt_data <- melt(df)
melt_data
cast_data <- cast(melt_data)
cast_data

