#plot 3

png(filename = "Plot3.png", width = 480, height = 480, units = "px")
plot(spec$Date_time, spec$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(spec$Date_time, spec$Sub_metering_1, col = "black")
lines(spec$Date_time, spec$Sub_metering_2, col = "red")
lines(spec$Date_time,spec$Sub_metering_3,col = "blue")
axis(side = 1,at = c(1,800,1600),labels = c("Thu","Fri","Sat"))
legend("topright",col = c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd  = 2 )
dev.off()