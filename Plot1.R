source ('LoadData.R')
png(filename = "Plot1.png", height = 480, width = 480)
hist(d$Global_active_power ,breaks = 12, col = "Red", main = "Global Active Power",
 xlab = "Global Active Power (kilowatts)")
dev.off()