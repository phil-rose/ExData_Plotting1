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

par(mfrow = c(1,1))

#Plot1
hist(subset$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#Save plot
dev.copy(png, file = "Plot1.png", height = 480, width = 480)
dev.off()


