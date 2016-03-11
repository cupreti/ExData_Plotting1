# This script creates plot2 graph

# load Data
source("DataSource.R")

# creates plot2
plot2 <- function() {
  datetime <-
    strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  png("plot2.png", width = 500, height = 500)
  plot(
    datetime, as.numeric(subSetData$Global_active_power), type = "l", xlab =
      "", ylab = "Global Active Power (kilowatts)"
  )
  dev.off()
}

