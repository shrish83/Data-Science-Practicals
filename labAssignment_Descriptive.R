#q11
ages<- c(20,20,20,20,20,21,21,21,22,22,22,22,23,23,23)

median_age <- function(a){
  a_len <- length(a)
  sort(a)
  if(a_len %% 2 == 0){
    return((a[a_len/2] + a[(a_len/2)+1])/2)
  }else{
    return(a[(a_len+1)/2])
  }
}


#q11_part1
print(median_age(ages[ages < 22]))

#q11_part2
print(median_age(ages))

#q11_part3
print(mean(ages))

#q11_part4
frqnc <- table(ages)
print(ages[max(frqnc)])

#q11_part5
ages1 <- sort(c(ages,23,23))
#mean
mean(ages1)

#mode
frqnc1 <- table(ages1)
print(ages1[max(frqnc1)])

#median
median(ages1)
#meian with the above created fucntion
median_age(ages1)


#q12
df<-vector()
midpoints<-seq(95.5, 175.5, 10)
freq<-c(5,8,22,27,17,9,5,5,2)
for(i in 1:length(midpoints)){
  df<-c(df, rep(midpoints[i],freq[i]))
}

data_range<-diff(range(df))
data_range
data_variance<-var(df)
data_variance
data_std<-sd(df)
data_std
data_meand<-mad(df, center = mean(df))
data_meand


#13
d <- vector()
face_dist <- function(d){
  df <- as.data.frame(table(d))
  colnames(df) <- c("Face", "Frequency")
  prob <- df[,2]/sum(df$Frequency)
  return(cbind(df,prob))
}

sample_40 <-sample(1:6,40,replace = T)
sample_70 <-sample(1:6,70,replace = T)
sample_100 <-sample(1:6,100,replace = T)

face_dist(sample_40)
face_dist(sample_70)
face_dist(sample_100)


#interquantile range
interQuantile<-function(data, x, y){
  q<-quantile(data, c(x/(10 ^nchar(x)), y/(10 ^nchar(y))))
  return(as.numeric(abs(diff(q))))
}
interQuantile(sample_40, 10, 60)

