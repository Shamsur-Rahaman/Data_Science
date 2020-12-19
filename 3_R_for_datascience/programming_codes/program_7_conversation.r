
# Conversation of Matrix <-> DataFrame

mat <- matrix(1:8, nrow = 2, ncol = 4, byrow = TRUE)
print(mat)

datF <- data.frame(number = c(1:5), char = c('a','s','d','f','g'))
print(datF)
# Convert Matrix -> DataFrame

matrixToDataFrame = as.data.frame(mat)
print(matrixToDataFrame)

dataFrameToMatrix = as.matrix(datF)
print(dataFrameToMatrix)
