
# Object and Class

x <- c(1:50)
#print(x)

class(x) <- "robust"

print(x)
print.default(x)

print.robust <- function(obj){
  cat("Median", median(x), sep = "\n")
  cat("Madian Absolute Diveation", mad(obj), sep = "\n")
}
print(median(x))
print(mad(x))
print(x)

print.robust(x) 



# New object and class

robSum.robust <- function(obj){
  cat("Median", median(obj), sep = "\n")
  cat("Absolute Median Diveasion", mad(obj), sep = "\n")
}

set.seed(123)
#x = rnorm(50)
x <- c(1:50)
#robSum.robust(obj = x)

myFun <- function(){
  robSum.robust(obj = x)
}
myFun()

# S4 class, object

x <- c(13, 21, 19, 18, 21, 16, 21, 24, 17, 18, 12, 18, 29, 17, 18,
       11, 13, 20, 25, 18, 15, 19, 21, 21, 7, 12, 23, 31, 16, 19, 23,
       15, 25, 19, 15, 25, 25, 16, 29, 15, 26, 29, 23, 24, 20, 19,
       14, 27, 22, 26)
robSum <- function(obj){
  med <- median(obj)
  mad <- mad(obj)
  q1 <- as.numeric(quantile(obj, probs = 0.25))
  q3 <- as.numeric(quantile(obj, probs = 0.75))
  return(list(median=med, mad=mad, q1= q1, q3=q3))
}
rStats <- robSum(obj=x)
rStatsS4 <- new("robustSummary", median=rStats$median,
                mad=rStats$mad, q1=rStats$q1, q3=rStats$q3)

isS4(rStatsS4)



# Another try

x <- c(13, 21, 19, 18, 21, 16, 21, 24, 17, 18, 12, 18, 29, 17, 18,
       11, 13, 20, 25, 18, 15, 19, 21, 21, 7, 12, 23, 31, 16, 19, 23, 15,
       25, 19, 15, 25, 25, 16, 29, 15, 26, 29, 23, 24, 20, 19, 14, 27, 22,
       26)

desStat <- function(numVec, type="classical"){
  if(!is.numeric(numVec))
    stop("The input must be numeric")
  average <- mean(numVec, na.rm = T)
  std <- sd(numVec, na.rm = T)
  med <- median(numVec, na.rm = T)
  mad <- mad(numVec, na.rm = T)
  descriptiveStats <- setClass("descriptiveStats",
                               representation =list(centre="numeric",
                                          spread="numeric"))
  if(type=="classical")
    return(new("descriptiveStats", centre=average, spread=std))
  if(type=="robust")
    return(new("descriptiveStats", centre=med, spread=mad))
}
desStat(x)


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("chromPlot")

if(!requireNamespace("BiocManager"))
  install.packages("BiocManager")

BiocManager::available()
BiocManager::repositories()
BiocManager::version()

BiocManager::install("chromPlot")


















