datafile <- "./exdata-data-household_power_consumption/household_power_consumption.txt"
data <- read.table(datafile,header = TRUE, sep = ";",stringsAsFactors = FALSE, dec = ".")
