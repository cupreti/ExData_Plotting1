# This script creates plot3 graph

# load Data
source("DataSource.R")

# creates plot3
plot3 <- function() {
  datetime <-
    strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  png("plot3.png", width = 500, height = 500)
  plot(
    datetime, subSetData$Sub_metering_1, type = "l",col = "black", xlab =
      "", ylab = "Energy Sub Metering"
  )
  lines(datetime,subSetData$Sub_metering_2,col = "red")
  lines(datetime,subSetData$Sub_metering_3,col = "blue")
  legend(
    "topright",
    col = c("black", "red", "blue"),
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = 1
  )
  dev.off()
}
