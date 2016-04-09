#set the working pathway
setwd("C:/Users/emb129/Desktop")

#reading data in and subset the data
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
data<-subset(mydata,Date=="1/2/2007" | Date=="2/2/2007")


png(filename = "plot3.png", width = 480, height = 480, units = "px",)


with(data, plot(strptime(paste(Date,Time), format = "%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_1),col="black",type="l", ylab="Energy sub metering",xlab=""))
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"),as.numeric(data$Sub_metering_2),col="red")
lines(strptime(paste(data$Date,data$Time), format = "%d/%m/%Y %H:%M:%S"),as.numeric(data$Sub_metering_3),col="blue")
legend("topright", col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()