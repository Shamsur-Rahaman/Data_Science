
# for loop in R

# Declare a dataset

set.seed(1234)

mat <- matrix(sample(c(0,1), 50, replace = TRUE), nrow = 10, ncol = 5)
rownames(mat) <- paste("patient", paste(1:10), sep = "")
colnames(mat) <- c("diabetes", "hypertension", "asthma", "jointpain", "fever")

# print(mat)
# Begin preparation



 out <- matrix( , nrow = ncol(mat), ncol = ncol(mat))
 for (i in 1:ncol(mat)) {
   for (j in 1:ncol(mat)) {
     colI <- mat[,i]
     colJ <- mat[,j]
     print(t(colI) %*% colJ)
     out[i,j] <- t(colI) %*% colJ
   }
 }
out

# Loop problem write natural numbers

vec_1 <- c(1:10)
for (i in 1:length(vec_1)) {
  print(i)
}

# write natural number using matrix
mat_1 <- matrix(1:10, nrow = 1, ncol = 10)
for (i in mat_1) {
  print(i)  
}

# sum of number 1 to 10
sum = 0
vec_2 <- c(1:10)
for (i in vec_2) {
  sum <- sum+i
}
print(sum)

# sum of number 1 to n
sum = 0
n <- readline(prompt = "Enter a natural number: ")
print(n)
vec_11 = c(1:n)
print(vec_11)
for (i in vec_11) {
  sum <- sum+i
}
paste("The Sum of Natural Number upto", n,  "terms : ", sum)

# diagram in R
k = 1
row <- readline(prompt = "Enter number of row : ")
for (i in 1:row) {
  for (j in 1:i) {
    paste(k, k<-k+1)
  writeLines(sep = "\n")
  j <- j+1
  }
  i <- i+1
}


cat("what is your name"+ "\n"+ "shamsur")
writeLines("File not supplied.\nUsage: ./program F=filename")

