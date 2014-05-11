setwd("~/Desktop/coursera/explore-assign1")
library(data.table)
dat <- fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydat <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]

#plot1
png(filename = "plot1.png", width = 480, height = 480)
mydat$Global_active_power <- as.numeric(mydat$Global_active_power)
hist(mydat$Global_active_power,
     xlab="Global Active Power (kilowatts)",main="Global Active Power",
     col="red")
dev.off()