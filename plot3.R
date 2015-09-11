data <- read.table("~/Documents/Rprojects/household_power_consumption.txt",header = T, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]

png(file = "plot3.png")
with(data, { 
    plot(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"),Sub_metering_1, type='l', xlab= "",ylab = 'Energy sub metering')
    lines(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"),Sub_metering_2, xlab= "", col = "red")
    lines(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"),Sub_metering_3, xlab= "", col = "blue")
    })
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)
dev.off()