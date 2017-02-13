# Load household data for 01-feb-2007 and 02-feb-2007
# source("tidydata.R")

y <- as.numeric(hh_part$Sub_metering_1)
plot(hh_part$DateTime[!is.na(y)], y[!is.na(y)], type = "l", xlab = "", ylab = "Energy sub metering")

y2 <- as.numeric(hh_part$Sub_metering_2)
lines(hh_part$DateTime[!is.na(y2)], y2[!is.na(y2)], col = "red")

y3 <- as.numeric(hh_part$Sub_metering_3)
lines(hh_part$DateTime[!is.na(y3)], y3[!is.na(y3)], col = "blue")

legend('topright', legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 1.5 ,pch = c(20,20,20), col = c("black","red","blue"))

dev.copy(png,'plot3.png')
dev.off()