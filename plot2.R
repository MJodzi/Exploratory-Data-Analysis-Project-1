
## We start with assigning the file as object for convenience.
dataFile <- "C:/Users/Iso/Documents/household_power_consumption.txt"

## Now we read the file and set the perameters.
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Setting the time, class and the demensions.
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
householdPower <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)

plot(datetime, householdPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()