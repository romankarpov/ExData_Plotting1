source ('LoadData.R')
png(filename = "Plot3.png", height = 480, width = 480)

plot(x = d$datetime, y = d$Sub_metering_1, type = "n",xlab = "", ylab = "Energy sub metering")  
points(x = d$datetime, y = d$Sub_metering_1, col = "black", type = "l")
points(x = d$datetime, y = d$Sub_metering_2, col = "red", type = "l")
points(x = d$datetime, y = d$Sub_metering_3, col = "blue", type = "l")
legend("topright" ,c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red", "blue"), lty = c(1,1,1))

dev.off()