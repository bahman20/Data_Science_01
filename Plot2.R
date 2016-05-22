alldata<-read.table("C:\\Users\\Bahman\\Downloads\\exdata-data-household_power_consumption\\household_power_consumption.txt",sep = ";",header = TRUE)
data<-subset(alldata,Date=="1/2/2007"|Date=="2/2/2007")
timedata<-as.numeric(as.POSIXct(data$Time,format="%H:%M:%S"))
Global_active_powerdata<-as.numeric(data$Global_active_power)*1e-3
plot(timedata,Global_active_powerdata,xaxt='n',pch=".",xlab="",ylab = "Global Active Power (kilowatts)")
lines(timedata[order(timedata)], Global_active_powerdata[order(timedata)], xlim=range(timedata), ylim=range(Global_active_powerdata), pch=".")
axesrange<-par("usr")
axis(1,at=c(timedata[1],mean(c(timedata[1],timedata[length(timedata)])),timedata[length(timedata)]),labels=c("Thu","Fri","Sat"))

dev.copy(png,"Plot2.png")
dev.off()