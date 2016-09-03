#assumes readData.r file is in working directory

#source read_data.R file which reads source data
source("./readData.R")

#get source data
data<-read_data()

#create plot device
png(filename="plot3.png", width = 480, height = 480)
#plot data
plot(data$Date,data$Sub_metering_1,xlab="", ylab = "Energy sub metering",type="n")
lines(data$Date,data$Sub_metering_1)
lines(data$Date,data$Sub_metering_2,col="red")
lines(data$Date,data$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),   
       col=c("black", "red", "blue"), lty=c(1,1,1))
#close plot device
dev.off()
