
# Matrix function

print(mat_1 <- matrix(1, nrow = 3, ncol = 3))
print(mat_2 <- matrix(1:9, nrow = 3, ncol = 3))

# Vector function

vec_1 <- c("food", "sports", "language")
vec_2 <- c("rice", "cricket", "bangla")

print(mat_3 <- rbind(vec_1, vec_2))
print(mat_4 <- cbind(vec_1, vec_2))

# Array function

print(mat_5 <- array(1:9, dim = c(3,3)))

# Verification

is.matrix(mat_1)

# Check row and column number

nrow(mat_3)
ncol(mat_4)

# Print values

print(mat_5[2,3])

# Addition and Subtraction

mat_6 <- matrix(1:6, nrow = 2, ncol = 3)
print(mat_6)

mat_7 <- matrix(1:6, nrow = 2, ncol = 3)
print(mat_7)

print(mat_6 + mat_7)
print(mat_6 - mat_7)

# Multiplication

mat_8 <- matrix(1:6, nrow = 2, ncol = 3)
print(mat_8)
mat_9 <- matrix(1:6, nrow = 3, ncol = 2)
print(mat_9)
mat_10 <- mat_8 %*% mat_9
print(mat_10)