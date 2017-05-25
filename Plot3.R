#Plot3
plot(subset$Sub_metering_1~subset$date_time, type = "l", xlab = "", ylab = "Energy sub metering") 
lines(subset$Sub_metering_2~subset$date_time, col="red")
lines(subset$Sub_metering_3~subset$date_time, col="blue")
legend("topright", col = c("black", "red", "blue"), lwd = c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Save plot
dev.copy(png, file = "Plot3.png", height = 480, width = 480)
dev.off()