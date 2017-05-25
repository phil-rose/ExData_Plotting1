#Plot1
hist(subset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#Save plot
dev.copy(png, file = "Plot1.png", height = 480, width = 480)
dev.off()

