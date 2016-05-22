alldata<-read.table("C:\\Users\\Bahman\\Downloads\\exdata-data-household_power_consumption\\household_power_consumption.txt",sep = ";",header = TRUE)
data<-subset(alldata,Date=="1/2/2007"|Date=="2/2/2007")
hist(as.numeric(data$Global_active_power)*1e-3,col="red",main = "Global Active Power",xlab="Global Active Power (kilowatts)")

dev.copy(png,"Plot1.png")
dev.off()