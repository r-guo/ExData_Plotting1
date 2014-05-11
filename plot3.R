setwd("~/Desktop/coursera/explore-assign1")
library(data.table)
dat <- fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydat <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]

#plot3
mydat$Sub_metering_1 <- as.numeric(mydat$Sub_metering_1)
mydat$Sub_metering_2 <- as.numeric(mydat$Sub_metering_2)
mydat$Sub_metering_3 <- as.numeric(mydat$Sub_metering_3)
png(filename = "plot3.png", width = 480, height = 480)
plot(mydat$DT, mydat$Sub_metering_1, 
     type="l", xlab="", ylab="Energy sub metering")
lines(mydat$DT, mydat$Sub_metering_2,col="red")
lines(mydat$DT, mydat$Sub_metering_3,col="blue")
legend("topright",cex=1, lty = 1, pt.cex = 1,
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()