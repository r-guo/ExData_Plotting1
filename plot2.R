setwd("~/Desktop/coursera/explore-assign1")
library(data.table)
dat <- fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
mydat <- dat[dat$Date=="1/2/2007"|dat$Date=="2/2/2007",]

#plot2
png(filename = "plot2.png", width = 480, height = 480)
mydat$DT<-as.POSIXct(paste(mydat$Date,mydat$Time),format="%d/%m/%Y %H:%M:%S")
plot(mydat$DT, mydat$Global_active_power, 
     type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()