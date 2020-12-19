
# Matrix example 1

mat <- matrix(1:9, 3, 3)
mat

rownames(mat) <- c("row1", "row2", "row3")
colnames(mat) <- c("col1", "col2", "col3")
mat


# Matrix example 2

Games
Salary
rownames(Games)

pay_per_game <- Salary/Games
pay_per_game

Games
Games[c(1:3)]

# Analyse the stats for first 3 player during last five season
Games[1:3, 6:10]

# Analyse first and last players stats for all the years
first_value <- Games[1,]
second_value <- Games[10,]
first_value
second_value
result <- rbind(first_value,second_value)
result

# Analyse 2008,2009 stats for all the players
Games
Games[1:10,4:5]
Games[1, ,drop=F]

# Matplot function for visualization

myMatPlot <- function(data,rows){
  Data <- data[rows,,drop=F]
  matplot(Data,type="b",pch = 14:18, col = c(1:5,6), xlab = "years")
  legend("bottomleft", inset = 0.0001, legend = Players[rows], col = c(1:5,6), pch = 14:18, horiz = F)
  Data
}

myMatPlot(Salary,1:10)
Seasons
?matplot()




