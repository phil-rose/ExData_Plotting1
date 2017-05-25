#Plot4
par(mfrow = c(2,2))
plot(subset$Global_active_power~subset$date_time, type = "l", xlab = "", ylab = "Global Active Power")
plot(subset$Voltage ~ subset$date_time, type = "l", xlab = "datetime", ylab = "Voltage")
plot(subset$Sub_metering_1~subset$date_time, type = "l", xlab = "", ylab = "Energy sub metering") 
lines(subset$Sub_metering_2~subset$date_time, col="red")
lines(subset$Sub_metering_3~subset$date_time, col="blue")
legend("topright", col = c("black", "red", "blue"), lwd = c(1,1,1), bty="n", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(subset$Global_reactive_power ~ subset$date_time, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

#Save plot
dev.copy(png, file = "Plot4.png", height = 480, width = 480)
dev.off()