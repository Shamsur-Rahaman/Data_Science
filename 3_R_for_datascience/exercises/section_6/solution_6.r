
#----------- Advance Visualization ------------
library(readr)
moviesInfo <- read_csv("problem_6_dataset.csv")
head(moviesInfo)
colnames(moviesInfo) <- c("Film", "Genre", "CriticsRating",
                          "AudienceRating", "BudgetInMillion", "Year")
summary(moviesInfo)
str(moviesInfo)
moviesInfo$Genre <- factor(moviesInfo$Genre)
moviesInfo$Year <- factor(moviesInfo$Year)

# Mapping vs Setting
library(ggplot2)
p <- ggplot(data = moviesInfo, aes( x = CriticsRating, y = AudienceRating))
p + geom_point()
# Example 1
p <- ggplot(data = moviesInfo)
p + geom_point(aes( x = CriticsRating, y = AudienceRating))
# Example 2
p <- ggplot(data = moviesInfo, aes( x = CriticsRating, y = AudienceRating))
p + geom_point(colour="Green", size=I(10))
# Example 3 
p <- ggplot(data = moviesInfo, aes( x = CriticsRating, y = AudienceRating))
p + geom_point(aes(colour = Genre, size = BudgetInMillion))


# Histogram and Density
p <- ggplot(data = moviesInfo, aes( x = BudgetInMillion,fill=Genre))
p + geom_histogram(binwidth = 10, color="black")

p + geom_density(aes(fill = Genre))
p + geom_density(aes(fill = Genre), position = "stack")

# Audience Rating vs Critics Rating
# Audience Rating
p <- ggplot(data = moviesInfo, aes(x = AudienceRating, fill = Genre))
p + geom_histogram(binwidth = 10, colour = "white")

# Critics Rating
p <- ggplot(data = moviesInfo, aes(x = CriticsRating, fill = Genre))
p + geom_histogram(binwidth = 10, colour = "white")

# Boxplot()
p <- ggplot(data = moviesInfo, aes(x = Genre, y = AudienceRating,
                                   color = Genre))
p + geom_boxplot() + geom_point()
p + geom_boxplot(size = 1.2, alpha = .5) + geom_jitter()
p + geom_jitter() + geom_boxplot(size = 1.2, alpha = .6) 


p <- ggplot(data = moviesInfo, aes(x = Genre, y = CriticsRating))
p + geom_boxplot() + geom_point()
p + geom_boxplot(size = 1.2, alpha = .5) + geom_jitter(aes(colour = Genre))
p + geom_jitter() + geom_boxplot(size = 1.2, alpha = .6) 

# Layer Tips (overwriting layers)
q <- ggplot(data = moviesInfo, aes(x = AudienceRating))
q + geom_histogram(binwidth = 10, colour="Red", fill = "White")
q + geom_histogram(binwidth = 10, colour = "red",
                   fill = "white", aes(x = CriticsRating))

# Facets
r <- ggplot(data = moviesInfo, aes(x = CriticsRating,
                                   y = AudienceRating,
                                  colour = Genre))
#Example 1
r + geom_histogram(binwidth = 10,
                   fill = "white") +
    facet_grid(Genre~Year)
#>>>>comments : looks beautiful

#Example 2
r + geom_point(size = 1) +
    facet_grid(Genre~Year) + 
    geom_smooth()
#>>>>comments : looks beautiful

#Example 3
r + geom_point(aes(size = BudgetInMillion)) +
  facet_grid(Genre~Year) + 
  geom_smooth()
#>>>>comments : looks ugly

#Examle 4 
r + geom_point(size = 1) +
  facet_grid(Genre~Year)

# Coordinates
library("ggplot2")
s <- ggplot(data=moviesInfo, aes(x = CriticsRating,
                                 y = AudienceRating,
                                 colour = Genre))
t <- ggplot(data=moviesInfo, aes(x = BudgetInMillion))
s + geom_point()
s + geom_point() + xlim(50,100) + ylim(50,100)
s + geom_point() + coord_cartesian(x = c(50,100),
                                   y = c(50,100))

t + geom_histogram(binwidth = 10, colour = "Green",
                   fill="white")

t + geom_histogram(binwidth = 10,
                   colour = "green",
                   fill = "white") + ylim(50,100)
t + geom_histogram(binwidth = 10,
                   colour = "green",
                   fill = "white") + coord_cartesian(ylim = c(50,100))


# Theme
u <- ggplot(data = moviesInfo,aes(x = BudgetInMillion))
v <- u + geom_histogram(binwidth = 10, 
                        colour  = "Black",aes(fill = Genre))
v + ggtitle("Movie Budget Distribution") +
  xlab("Movie Budgets") + ylab("Number of Movies") +
  theme(axis.title.x = element_text(size = 20, colour = "darkgreen"),
          axis.title.y = element_text(size = 20, colour = "seagreen"),
          axis.text.x  = element_text(size = 15),
          axis.text.y  = element_text(size = 15),
          plot.title   = element_text(hjust = .5),
          legend.title = element_text(size = 20),
          legend.text  = element_text(size = 15),
          legend.position = c(1,1),
          legend.justification = c(1,1)
        )
?theme

# Practice
library(readr)
moviesInfo <- read_csv("Documents/R/tutorial_5/P2-Movie-Ratings.csv")
moviesInfo
head(moviesInfo)
tail(moviesInfo)
colnames(moviesInfo) <- c("Film", "Genre",
                          "CriticsRating",
                          "AudienceRating", 
                          "BudgetInMillion", "Year")






