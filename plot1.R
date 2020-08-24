data <- read.csv("./data/household_power_consumption.txt",
                 sep=";", na.strings = c("?",""))
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

png(filename="plot1.png")
hist(as.numeric(data$Global_active_power), col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()
