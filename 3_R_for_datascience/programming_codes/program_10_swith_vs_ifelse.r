
# Declare switch statement

option_1 <- function(x, sym){
  switch(x, classical = c(mean = mean(x, na.rm = TRUE), std = sd(x, na.rm = TRUE)),
         robust = c(med = median(x, na.rm = TRUE), mad = mad(x, na.rm = TRUE)))
}

# Declare if else statement

option_2 <- function(x, sym){
  if(sym == "classical"){
    out <- c(mean = mean(x, na.rm = TRUE), std = sd(x, na.rm = TRUE))
    return(out)
  }
  else if(sym == "robust"){
    out <- c(med = median(x, na.rm = TRUE), mad = mad(x, na.rm = TRUE))
    return(out)
  }
  else return(NULL)
}

# Give input vector/table/matrix
x <- c(1:100)

# Call library
library(microbenchmark)

# Use library

result_1 <- microbenchmark(option_1(x, "classical"), option_2(x, "classical"), times = 100000)
print(result_1)

result_2 <- microbenchmark(option_1(x, "robust"), option_2(x, "robust"), times = 100000)
print(result_2)

R.version()



