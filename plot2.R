#assumes readData.r file is in working directory

#source read_data.R file which reads source data
source("./readData.R")

#get source data
data<-read_data()

#create plot device
png(filename="plot2.png", width = 480, height = 480)
#plot data
plot(data$Date,data$Global_active_power,xlab="", ylab = "Global Active Power (kilowatts)",type="n")
lines(data$Date,data$Global_active_power)
#close plot device
dev.off()
