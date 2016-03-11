
# initializing data to be plotted
datasource <- "./household_power_consumption.txt"
data <- read.table(datasource, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Getting data only in between 1/2/2007 to 2/2/2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]