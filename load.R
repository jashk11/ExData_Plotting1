#load dataset

spec<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,na = "?")
spec<-spec[(spec$Date == "1/2/2007" | spec$Date == "2/2/2007"),]
spec$DateTime <- strptime(paste(spec$Date, spec$Time), "%d/%m/%Y %H:%M:%S")
rownames(spec) <- 1 : nrow(spec)
spec <- cbind(spec[,10], spec[, 3:9])
colname <- colnames(spec)
colname[1] <- "Date_time"
colnames(spec) <- colname
