
vec_1 <- c(1:5)
vec_2 <- c("a", "s", "d", "f", "g")
#print(vec_1)
#print(vec_2)

mat <- matrix(1:8, nrow = 2, ncol = 4)
#print(mat)

datF_1 <- data.frame(data_1 = 1:5, gender = c("M", "F", "M", "F", "M")) 
#print(datF_1)

array_1 <- array(1:6, dim = c(2,3))
#print(array_1)

# Declaring list
list_1 <- list(vec_1, vec_2, mat, datF_1, array_1)
#print(list_1)

# Verifying list

#print(str(list_1))

# Accessing list element

print(list_1[[2]])
print(list_1[[4]])
