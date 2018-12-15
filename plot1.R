data <- read.table("course3assignment.txt", header=T, sep=";", 
                   stringsAsFactors = F, na.strings="?")
active_power <- data$Global_active_power
hist(active_power[data$Date == "1/2/2007" | data$Date == "2/2/2007"], 
     xlab="Global Active Power(Kilowatts)",
     col="red", main="Global Active Power")

############

x <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
y <- paste(x$Date, x$Time)
datetime <- strptime(y, "%d/%m/%Y %H:%M:%S")

plot(datetime, x$Global_active_power)
