
# Customized function

# Find the average

vec <- c(10:15)

average <- function(vectorInput){
  sum <- sum(vectorInput)
  num <- length(vectorInput)
  ave <- (sum/num)
  return(ave)
}
average(vec)

# Recursive function

# print the sum of (3^3 + 2^2 + 1^1)
cubicSum <- function(n){
  if(n == 0)
    return (0)
  else
    return(n**n + cubicSum(n-1))
}
cubicSum(n = 3)

# print the sum of 1+2+3+4+5+6+7+8+9+10

n <- readline(prompt = "Enter number")
seriesSum = function(n){
  
  if(n == 0)
    return(0)
  else
    return(n + seriesSum(n-1))
}
seriesSum(n)














