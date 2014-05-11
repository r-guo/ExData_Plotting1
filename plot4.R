setwd("~/Desktop/coursera/explore-assign1")
library(data.table)
dat <- fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydat <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]

#plot4
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(mydat$DT, mydat$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(mydat$DT, mydat$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(mydat$DT, mydat$Sub_metering_1, 
     type="l", xlab="", ylab="Energy sub metering")
lines(mydat$DT, mydat$Sub_metering_2,col="red")
lines(mydat$DT, mydat$Sub_metering_3,col="blue")
legend("topright", cex=0.6, lty = 1, bty = "n", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(mydat$DT, mydat$Global_reactive_power, type="l", 
     xlab="datetime", ylab="Global_reactive_power")
dev.off()