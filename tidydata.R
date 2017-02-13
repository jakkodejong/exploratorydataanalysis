hh <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE)

hh$DateTime <- paste(hh$Date, hh$Time)
hh$DateTime <- as.POSIXct(hh$DateTime, format = "%d/%m/%Y %H:%M:%S")

#hh$Date <- as.Date(hh$Date, "%d/%m/%Y")
hh_part <- hh[hh$DateTime >= "2007-02-01 00:00:00" & hh$DateTime <= "2007-02-02 23:59:59",]
hh_part <- hh_part[!is.na(hh_part$DateTime),]

rm(hh)