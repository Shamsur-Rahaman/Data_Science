
#

avail <- BiocManager::available()
length(avail)

BiocManager::install("chromPlot")

x <- vector("numeric", length = 10)
print(x)

y <- vector("numeric", 1,2,3)
print(y)

n <- vector(mode = "character", 'a','s')
print(n)

m <- matrix(1:10, nrow = 2, ncol = 5)
print(m)

a <- 1:3
b <- c(10:12)
rbind(a,b)
cbind(a,b)

c <- list("a", 10, 10.3, 1+0i)
print(c)
  
d <- factor(c("yes","no","yes","no","yes")) 
print(d)
print(table(d))  
as.factor(d)
unclass(d)
nrow(d)
ncol(d)
is.na(d)
is.nan(d)

e <- c("chittagong", "Dhaka", "Sylhet")
#x
#names(x) <- c("chittagong", "Dhaka", "Sylhet")
#names(x)

f <- as.matrix(e)
rownames(x) <- c("row1","row2","row3")
colnames(x) <- c("col1")
#dimnames(f) <- list(c("row1","row2","row3"),c("col1"))
print(f)


