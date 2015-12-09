
## We start with assigning the file as object for convenience.
dataFile <- "C:/Users/Iso/Documents/household_power_consumption.txt"

## Now we read the file and set the perameters.
dataSet <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Setting the class and the demensions.
householdPower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)

hist(householdPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()