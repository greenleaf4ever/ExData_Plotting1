## Load the dataset
setwd("C:/Users/schang/Desktop/Luye Dropbox/Dropbox/Coursera/Exploratory Data Analysis/Week 1")
datafile <- "C:/Users/schang/Desktop/Luye Dropbox/Dropbox/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt"
data <- read.table(datafile,header = TRUE, sep = ";", na.strings = "?")

##subset data from the dates 2007-02-01 and 2007-02-02
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##combine date and time
datetime <- paste(subData$Date, subData$Time)
strptime(datetime, "%m/%d/%Y %H:%M:%S")

##Convert to numeric
GlobalActivePower <- as.numeric(subData$Global_active_power)


##Plot 2: Plot Time by Global Active Power; use lines

plot(datetime, GLobalActivePower, type="l", xlab ="", ylab = "GLobal Acive POwer (kilowatts)")
dev.copy(png, file = "Plot2.png", width = 480, height = 480)
dev.off()






