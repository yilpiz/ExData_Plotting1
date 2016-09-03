read_data()<-function()
{
    library(dplyr)
    #load data 
    colnames<-c("Date","Time","Global_active_power","Global_reactive_power",
                "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
    
    #assume file is downloaded to working directory
    data<-read.table("./household_power_consumption.txt",col.names=colnames,header=TRUE,sep = ";",na.strings = "?")
    # concatenate date and time then convert to DateTime type
    data$Date=as.POSIXct(strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S"))
    
    #subset data to 2007-02-01 to 2007-02-02 
    data<-filter(data, Date>="2007-02-01 00:00:00" & Date<"2007-02-03 00:00:00")
}
