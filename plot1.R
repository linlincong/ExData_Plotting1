#set the working pathway
setwd("C:/Users/emb129/Desktop")

#reading data in and subset the data
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
data<-subset(mydata,Date=="1/2/2007" | Date=="2/2/2007")


png(filename = "plot1.png",
    width = 480, height = 480, units = "px",)

hist(as.numeric(data$Global_active_power), col="red",main="Global Active Power", xlab="Golbal Actifve Power(kilowatts)")

dev.off()