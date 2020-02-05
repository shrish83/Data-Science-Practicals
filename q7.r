install.packages("pracma")
library(pracma)

########DOUBT#########

str1 <- readline("Enter a string: ")
str1
class(str1)
check_reverse <- function(str)
{
  st = str1
  str1 <- strsplit(str1,as.character(split = ""))
  str2 <- strsplit(st,as.character(split = ""))
  class(str2)
  if(identical(as.list(unlist(str1)),as.list(unlist(str2))))
  {
    #print("Palindrome!")
  }
  else
  {
   print("Not Palindrome!")
  }
}

check_reverse(str1)
