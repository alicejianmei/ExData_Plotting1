
data <- read.table("course3assignment.txt", header=T, sep=";", 
                   stringsAsFactors = F, na.strings="?")
x <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
y <- paste(x$Date, x$Time)
datetime <- strptime(y, "%d/%m/%Y %H:%M:%S")


plot(datetime, x$Sub_metering_1, col='black', type='l',ylab=
       "Energy sub metering",xlab=""
     )
lines(datetime, x$Sub_metering_2, col='red', type='l')
lines(datetime, x$Sub_metering_3, col='blue', type='l')
legend("topright", legend=c("Sub_metering_1","Sub_metering_2", 
      "Sub_metering_3"), lty=1,
       col=c("black", "red", "blue")
      )


dev.copy(png,'plot3.png')
dev.off()

