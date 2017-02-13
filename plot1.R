# Load household data for 01-feb-2007 and 02-feb-2007
# source("tidydata.R")

x <- as.numeric(hh_part$Global_active_power)
hist(x[!is.na(x)], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png,'plot1.png')
dev.off()