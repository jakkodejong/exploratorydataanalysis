# Load household data for 01-feb-2007 and 02-feb-2007
# source("tidydata.R")

x <- as.numeric(hh_part$Global_active_power)
good <- !is.na(x)
plot(hh_part$DateTime[good], x[good], type = "l", ylab = "Global Active Power (kW)", xlab = "")

dev.copy(png,'plot2.png')
dev.off()