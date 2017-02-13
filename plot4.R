# Load household data for 01-feb-2007 and 02-feb-2007
# source("tidydata.R")
par(mfrow = c(2,2))

# First plot
x <- as.numeric(hh_part$Global_active_power)
good <- !is.na(x)
plot(hh_part$DateTime[good], x[good], type = "l", ylab = "Global Active Power", xlab = "")

# Second plot
x <- as.numeric(hh_part$Voltage)
good <- !is.na(x)
plot(hh_part$DateTime[good], x[good], type = "l", ylab = "Voltage", xlab = "datetime")

# Third plot
y <- as.numeric(hh_part$Sub_metering_1)
plot(hh_part$DateTime[!is.na(y)], y[!is.na(y)], type = "l", xlab = "", ylab = "Energy sub metering")

y2 <- as.numeric(hh_part$Sub_metering_2)
lines(hh_part$DateTime[!is.na(y2)], y2[!is.na(y2)], col = "red")

y3 <- as.numeric(hh_part$Sub_metering_3)
lines(hh_part$DateTime[!is.na(y3)], y3[!is.na(y3)], col = "blue")

legend('topright', legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch = c(20,20,20), col = c("black","red","blue"), cex = 0.75)

# Fourth plot

x <- as.numeric(hh_part$Global_reactive_power)
good <- !is.na(x)
plot(hh_part$DateTime[good], x[good], type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.copy(png,'plot4.png')
dev.off()