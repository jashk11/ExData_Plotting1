# plot 4

png(filename = "Plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))

plot(spec$Date_time, spec$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")
lines(spec$Date_time, spec$Global_active_power, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))

plot(spec$Date_time, spec$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
lines(spec$Date_time, spec$Voltage, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))


plot(spec$Date_time, spec$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(spec$Date_time, spec$Sub_metering_1, col = "black")
lines(spec$Date_time, spec$Sub_metering_2, col = "red")
lines(spec$Date_time,spec$Sub_metering_3,col = "blue")
axis(side = 1,at = c(1,800,1600),labels = c("Thu","Fri","Sat"))
legend("topright",col = c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd  = 2 )


plot(spec$Date_time,spec$Global_reactive_power,type = "l",col = "black",xlab = "datetime",ylab = "global reactive power",xaxt = "n")
lines(spec$Date_time, spec$Global_reactive_power, col = "black")
axis(side = 1, at = c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()