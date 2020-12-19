
# array decleration

arr_1 <- array(1:16, dim = c(2,2,4))
print(arr_1)

# More array decleration

row.names <- c("row_1", "row_2")
column.names <- c("col_1", "col_2")
matrix.names <- c("m1", "m2", "m3", "m4")

array_2 <- array(1:16, dim = c(2,4,2), dimnames = list(row.names, column.names, matrix.names))
print(array_2)

# More way to declare Array

row.names <- c("row_1", "row_2")
column.names <- c("col_1", "col_2", "col_3", "col_4")
matrix.names <- c("m1", "m2")
array_3 <- array(1:16, dim = c(2,4,2), dimnames = list(row.names, column.names, matrix.names))
print(array_3)

# Last but not lest

library("plyr")

array_4 <- array(1:16, dim = c(2,4,2))
print(array_4)
array_5 <- aaply(array_4, 1, mean)
print(array_5)
