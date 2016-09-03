#assumes readData.r file is in working directory

#source read_data.R file which reads source data
source("./readData.R")

#get source data
data<-read_Data()

#create plot device
png(filename="plot1.png", width = 480, height = 480)
#plot histogram
hist(data$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
#close plot device
dev.off()
