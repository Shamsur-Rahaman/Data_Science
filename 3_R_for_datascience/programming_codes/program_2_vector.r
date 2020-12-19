
# Print vector way 1
vec_1 <- c("Cricket","Football","Hockey")

print(vec_1)

# Print vector way 2
vec_2 <- c(game="Sports", weapon="arms", medicine="drugs")

print(vec_2)

# Print vector way 3
vec_3 <- c(1,2,3,4,5)

print(vec_3)

# Print vector way 4
vec_4 <- c(1:5)

print(vec_4 <- c(1:5))

# Print vector way 5

print(vec_5 <- c("true", "false", "true", "false"))

# Print vector way 6

print(vec_6 <- c(TRUE, FALSE, TRUE, FALSE))

# Generate random number using vector

print(vec_7 <- runif(n = 5, min = 10, max = 19))

# Generate random words using vector

print(vec_8 <- sample(x = letters, size = 5, replace = F))

# Verifying vector

is.vector(vec_1)
is.vector(vec_2)
is.vector(vec_3)
is.vector(vec_4)
is.vector(vec_5)
is.vector(vec_6)

# Use of index in vector

vec_9 <- c("rice","fish","meat",'salad','lentic_soup')
print(vec_9[1:5])

# Combination vector

vec_10 <- c("rice", 2, "meat", TRUE)
print(vec_10)