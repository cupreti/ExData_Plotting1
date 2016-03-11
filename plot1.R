# This script creates plot1 graph

# load Data
source("DataSource.R")

# creates plot1
plot1 <- function() {
  png("plot1.png", width = 500, height = 500)
  hist(
    as.numeric(subSetData$Global_active_power), col = "red", main = "Global Active Power", xlab =
      "Global Active Power (kilowatts)"
  )
  dev.off()
}
