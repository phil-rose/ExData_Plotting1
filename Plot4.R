#Read in the data
data <- read.csv("C:/Users/Phil/Documents/Data_Science/Exploratory_Data_Analysis/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

data$Date <- as.character(data$Date)

#Format the Date column as a date
data$Date <- as.Date(data$Date, "%d/%m/%Y")

#Create a subset of the data, subset, for the two dates we will examine, 2-1-2007 and 2-2-2007
subset <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

#Combine Date and Time column
date_time <- paste(subset$Date, subset$Time)

#Add the Date_Time column to the subset dataset
subset <- cbind(date_time, subset)

#Format the new column
subset$date_time <- as.POSIXct(date_time)

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