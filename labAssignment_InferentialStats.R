#23
zScore <- function(x){
  return(x-(80/15))
}
sample_marks <- rnorm(50,mean = 80,sd=15)
sample_marks <- rnorm(10,mean = 80,sd=15) #reduced sample size to 10 from 50
zScores <- sapply(sample_marks, zScore)
df<-data.frame(Marks=sample_marks, Z_Score=zScores)
#View(df)
t.test(sample_marks,mu=85)
##For sample size = 50,mean of x = 78.84588 that is not equal to 85 and p = 0.001451 which is too small hence null hypothesis rejected at 95% confidence
t.test(sample_marks,mu=85,conf.level = 0.97)
##mean of x = 78.84588 and p < 2.2e-16 which is too small hence null hypothesis rejected at 97% confidence
## if sample size is reduced, the p value increases and hence we cannot reject null hypothesis due to less amount of evidence


#24
prop.test(25145,49152,p=0.5) #p= 3/6 i.e 0.5


#25
#part 1
# sample_cakes <- rnorm(900,mean = 3.4,sd = 2.61)
# #sample_mean <- 3.4
# t.test(sample_cakes,mu = 3.25)
# Null Hypothesis H0
# : mu = 3.25 cm (the sample has been drawn from the
#                population mean mu = 3.25 cm and SD  = 2.61 cm)
# Alternative Hypothesis H1
# : mu ≠ 3.25 cm (two tail) i.e., the sample has not been
# drawn from the population mean mu = 3.25 cm and SD  = 2.61 cm.
# Consider The level of significance alpha = = 5% i.e  .05

#test Statisics
z_cal <- (3.4-3.25)/(2.61/sqrt(900))
z_cal
#Since the significant value of z=1.96
#and z_cal<z i.e 1.724138<1.96
#Inference: :Since the calculated value is less than table value i.e., z_cal < z at 5% level
#of significance, the null hypothesis is accepted. Hence we conclude that the data doesn’t
#provide us any evidence against the null hypothesis. Therefore, the sample has been
#drawn from the population mean m = 3.25 cm and SD, s = 2.61 cm.

#25 #part 2
#95% confidence (1.96) limits for the population mean mu are :
Std_err <- 2.61/sqrt(900)
lower_lim_95 <-3.4-(1.96 * Std_err)
upper_lim_95<-3.4+(1.96 * Std_err)
#3.229≤mu≤ 3.571

##98% confidence (2.33) limits for the population mean mu are :
lower_lim_98 <-3.4-(2.33 * Std_err)
upper_lim_98<-3.4+(2.33 * Std_err)
#3.197≤mu≤ 3.603




#26  ##if count of male/female workers (in total) is larger then count of skilled workers of the corresponding sex should also be larger
df_village <- data.frame(Skilled=c(40,10,50),Unskilled=c(20,30,50),Total=c(60,40,100),row.names = c("Male","Female","Total")) 
View(df_village)
##Null Hypothesis H0:
#  The nature of work and sex are independent of each other.
##Alternate Hypothesis H1:
#  The nature Of Work is dependent of sex.
# Consider The level of significance alpha = = 5.0 % i.e .05
xsq <- (100*(((40*30)-(10*20)) ** 2))/(60*40*50*50)
xsq
#OR
xsq<-chisq.test(df_village)
xsq
#Since the significant value of z=1.96 and alpha =0.05
#and p = 0.002243
#Inference: :Since the calculated value of p < alpha i.e 0.00243 < 0.05 hence
#The null hypothesis is rejected at 95% confidence limit.
## Hence, the nature Of Work is dependent of sex.


