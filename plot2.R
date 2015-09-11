# Reading data
data <- read.table("~/Documents/Rprojects/household_power_consumption.txt",header = T, sep = ";", na.strings = "?")
# ediding date format
data$Date <- as.Date(data$Date,"%d/%m/%Y")
# subsetting
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
# saving to file
png(file = "plot2.png")
# plotting
with(data,plot(strptime(paste(Date,Time),"%Y-%m-%d %H:%M:%S"),Global_active_power,type='l', xlab= "",ylab = 'Global Active Power (kilowatts)'))

dev.off()