data <- read.csv("./data/household_power_consumption.txt",
                 sep=";", na.strings = c("?",""))
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename="plot2.png")
plot(time, data$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()
