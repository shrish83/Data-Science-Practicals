num <- as.integer(readline(prompt = " Enter a number: "))
if(num < 0){
  print("Enter a positive number!")
}
else{
 s = (num * (num + 1))/2
  print(s)
}
