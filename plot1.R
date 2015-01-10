## get data file from local PC
dataFile <- "./data/household_power_consumption.txt"

## read in datafile
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## create the subset
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)

## turn subset to numeric for plotting
globalActivePower <- as.numeric(subSetData$Global_active_power)

## define the image
png("plot1.png", width=480, height=480)

## create the histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
