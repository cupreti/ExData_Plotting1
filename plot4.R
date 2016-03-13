# This script creates plot4 graph

# load Data
source("DataSource.R")

# creates plot4
plot4 <- function() {
  png("plot4.png", width = 500, height = 500)
  par(mfrow = c(2,2))
  datetime <-
    strptime(paste(subSetData$Date, subSetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
  
  
  # (0,0) Sub-plot
  plot(
    datetime, as.numeric(subSetData$Global_active_power), type = "l", xlab =
      "", ylab = "Global Active Power (kilowatts)"
  )
  
  # (0,1) Sub-plot
  plot(
    datetime, as.numeric(subSetData$Voltage), type = "l", xlab =
      "DateTime", ylab = "voltage"
  )
  
  # (1,0) Sub-plot
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
  
  # (1,1) Sub-plot
  plot(
    datetime, subSetData$Global_reactive_power, type = "n",
    xlab = "datetime", ylab = "Global_reactive_power"
  )
  lines(datetime, subSetData$Global_reactive_power)
  
  dev.off()
}