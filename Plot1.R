## Load the dataset
setwd("C:/Users/schang/Desktop/Luye Dropbox/Dropbox/Coursera/Exploratory Data Analysis/Week 1")
datafile <- "C:/Users/schang/Desktop/Luye Dropbox/Dropbox/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt"
data <- read.table(datafile,header = TRUE, sep = ";", na.strings = "?")

##subset data from the dates 2007-02-01 and 2007-02-02
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##Plot 1: Histgram of GLobal Active Power
png("plot1.png", width=480, height=480)
hist(subData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
