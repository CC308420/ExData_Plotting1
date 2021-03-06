data <- read.csv("./data/household_power_consumption.txt",
                 sep=";", na.strings = c("?",""))
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename="plot3.png")
plot(time, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(time, data$Sub_metering_2, col="red")
lines(time, data$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
