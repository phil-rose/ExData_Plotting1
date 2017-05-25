#Plot2
plot(subset$Global_active_power~subset$date_time, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#Save plot
dev.copy(png, file = "Plot2.png", height = 480, width = 480)
dev.off()
