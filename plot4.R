
data <- read.table("course3assignment.txt", header=T, sep=";", 
                   stringsAsFactors = F, na.strings="?")
x <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
y <- paste(x$Date, x$Time)
datetime <- strptime(y, "%d/%m/%Y %H:%M:%S")






par(mfrow = c(2, 2))
plot(datetime, x$Global_active_power,xlab="",
     ylab="Global Active Power(Kilowatts)",type="l"
)
plot(datetime, x$Voltage,xlab="datetime",
     ylab="Voltage",type="l"
)

plot(datetime, x$Sub_metering_1, col='black', type='l',ylab=
       "Energy sub metering",xlab=""
)
lines(datetime, x$Sub_metering_2, col='red', type='l')
lines(datetime, x$Sub_metering_3, col='blue', type='l')
legend("topright", legend=c("Sub_metering_1","Sub_metering_2", 
                            "Sub_metering_3"), lty=1,
       col=c("black", "red", "blue")
)


plot(datetime, x$Global_reactive_power,xlab="datetime",
     ylab="Global_reactive_Power(Kilowatts)",type="l"
)


dev.copy(png,'plot4.png')
dev.off()
