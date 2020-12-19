
mydata <- read.csv(file.choose())

head(mydata)

pdf("program_1.pdf", 1000, 1000)

ggplot(data=mydata, aes(x = price, y = carat, color = clarity)) + geom_point()

dev.off()

library("versions")
installed.versions("ggplot2")