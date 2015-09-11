data <- read.table("~/Documents/Rprojects/household_power_consumption.txt",header = T, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
png(file = "plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (killowatts)", col = "red")
dev.off()