source ('LoadData.R')
png(filename = "Plot2.png", height = 480, width = 480)
plot(x = d$datetime, y = d$Global_active_power, 
     type = "l", xlab = "", main = "", ylab = "Global Active Power (kilowatts)")
dev.off()