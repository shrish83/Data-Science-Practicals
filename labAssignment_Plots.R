#install.packages("ggplot2", dependencies = T)
#install.packages("ggpubr", dependencies = T)
library(ggpubr)
library(ggplot2)


##q15
sample_40 <-sample(1:6,40,replace = T)
sample_40
df_40 <- data.frame(table(sample_40))
df_40
scatter_40 <- ggplot(df_40, mapping = aes(x = sample_40, y = df_40$Freq)) + geom_point(aes(color = sample_40))
scatter_40

sample_70 <-sample(1:6,70,replace = T)
sample_70
df_70 <- data.frame(table(sample_70))
df_70
scatter_70 <- ggplot(df_70, mapping = aes(x = sample_70, y = df_70$Freq)) + geom_point(aes(color = sample_70))
scatter_70

sample_100 <-sample(1:6,100,replace = T)
sample_100
df_100 <- data.frame(table(sample_100))
df_100
scatter_100 <- ggplot(df_100, mapping = aes(x = sample_100, y = df_100$Freq)) + geom_point(aes(color = sample_100))
scatter_100


#q16
scatter_40<-ggplot(df_40,mapping = aes(x=sample_40,y=df_40$Freq, fill=sample_40)) + geom_bar(stat = "identity", show.legend = F)
scatter_70<-ggplot(df_70,mapping = aes(x=sample_70,y=df_70$Freq, fill=sample_70)) + geom_bar(stat = "identity", show.legend = F)
scatter_100<-ggplot(df_100,mapping = aes(x=sample_100,y=df_100$Freq, fill=sample_100)) + geom_bar(stat = "identity", show.legend = F)

scatter_40
scatter_70
scatter_100


#Assignment_Plots extra question
##normal distribution
sample_1000 <- rnorm(1000)
hist_1000 <- ggplot()+ geom_histogram(aes(sample_1000),bins = 100, fill="blue")
hist_1000

sample_10000 <- rnorm(10000)
hist_10000 <- ggplot()+ geom_histogram(aes(sample_10000),bins = 100, fill="yellow")
hist_10000

##binomial distribution
sample_1000 <- rbinom(1000, 25, 0.3)
hist_1000 <- ggplot()+ geom_histogram(aes(sample_1000),bins = 100, fill="blue")
hist_1000

sample_10000 <- rbinom(10000, 25, 0.3)
hist_10000 <- ggplot()+ geom_histogram(aes(sample_10000),bins = 100, fill="yellow")
hist_10000

##uniform distribution
sample_1000 <- runif(1000, -3, 3)
hist_1000 <- ggplot()+ geom_histogram(aes(sample_1000),bins = 100, fill="blue")
hist_1000

sample_10000 <- runif(10000, -3, 3)
hist_10000 <- ggplot()+ geom_histogram(aes(sample_10000),bins = 100, fill="yellow")
hist_10000


### As the sample size increases, the distributions becomes more inclined towards normal distribution.
