source ('LoadData.R')
png(filename = "Plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

plot(x = d$datetime, y = d$Global_active_power, type = "l", xlab = "", main = "", ylab = "Global Active Power (kilowatts)")
plot(x = d$datetime, y = d$Voltage, type = "l", col = "black", xlab = "datetime", ylab = "Voltage")

plot(x = d$datetime, y = d$Sub_metering_1, type = "n",xlab = "", ylab = "Energy sub metering")  
points(x = d$datetime, y = d$Sub_metering_1, col = "black", type = "l")
points(x = d$datetime, y = d$Sub_metering_2, col = "red", type = "l")
points(x = d$datetime, y = d$Sub_metering_3, col = "blue", type = "l")
legend("topright" ,c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red", "blue"), lty = c(1,1,1), bty = "n")

plot(x = d$datetime, y = d$Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = "Voltage")

dev.off()