#assumes readData.R file is in working directory

#source readData.R file which reads source data
source("./readData.R")

#get source data
data<-read_data()

#create plot device
png(filename="plot4.png", width = 480, height = 480)

#set up canvas
par(mfrow=c(2,2),mar=c(5,4,4,2))

#plot1
plot(data$Date,data$Global_active_power,xlab="", ylab = "Global Active Power",type="n")
lines(data$Date,data$Global_active_power)

#plot 2
plot(data$Date,data$Voltage,xlab="datetime", ylab = "Voltage",type="n")
lines(data$Date,data$Voltage)

#plot 3
plot(data$Date,data$Sub_metering_1,xlab="", ylab = "Energy sub metering",type="n")
lines(data$Date,data$Sub_metering_1)
lines(data$Date,data$Sub_metering_2,col="red")
lines(data$Date,data$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),   
       col=c("black", "red", "blue"), lty=c(1,1,1))

#plot4
plot(data$Date,data$Global_reactive_power,xlab="datetime", ylab = "Global_reactive_power",type="n")
lines(data$Date,data$Global_reactive_power)

dev.off()
