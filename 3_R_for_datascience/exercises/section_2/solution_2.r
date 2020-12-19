
# Homework solution for law of large number
sum = 0 
for (i in rnorm(100)) {
  sum = sum + i
  avg <- sum/100
}
print(avg)










