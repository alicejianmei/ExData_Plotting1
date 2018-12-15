
data <- read.table("course3assignment.txt", header=T, sep=";", 
                   stringsAsFactors = F, na.strings="?")
x <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
y <- paste(x$Date, x$Time)
datetime <- strptime(y, "%d/%m/%Y %H:%M:%S")



plot(datetime, x$Global_active_power,xlab="",
     ylab="Global Active Power(Kilowatts)",type="l"
)
dev.copy(png,'plot2.png')
dev.off()