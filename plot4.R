# imports library and subsets
library(datasets)
mimo<-read.table("./household_power_consumption.txt",sep=";",header=TRUE)
kk<-as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-01"|as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-02"
mimo<-mimo[kk,]

#creates the graphical output in quartz(), or similar graphic device
par(mfrow=c(2,2))
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_active_power)),type="n",xlab="",ylab="Global Active Power")
with(mimo,lines(DateTime,as.numeric(as.character(Global_active_power))))
plot(mimo$DateTime,as.numeric(as.character(mimo$Voltage)),type="n",xlab="datetime",ylab="Voltage")
with(mimo,lines(DateTime,as.numeric(as.character(Voltage)),col="black"))
plot(mimo$DateTime,as.numeric(as.character(mimo$Sub_metering_1)),type="n",xlab="",ylab="Energy sub metering")
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_2)),col="red"))
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_3)),col="blue"))
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_1))))
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_reactive_power)),type="n",xlab="datetime",ylab="Global_reactive_power")
with(mimo,lines(DateTime,as.numeric(as.character(Global_reactive_power)),col="black"))

#creates the .png graphic output
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_active_power)),type="n",xlab="",ylab="Global Active Power")
with(mimo,lines(DateTime,as.numeric(as.character(Global_active_power))))
plot(mimo$DateTime,as.numeric(as.character(mimo$Voltage)),type="n",xlab="datetime",ylab="Voltage")
with(mimo,lines(DateTime,as.numeric(as.character(Voltage)),col="black"))
plot(mimo$DateTime,as.numeric(as.character(mimo$Sub_metering_1)),type="n",xlab="",ylab="Energy sub metering")
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_2)),col="red"))
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_3)),col="blue"))
with(mimo,lines(DateTime,as.numeric(as.character(Sub_metering_1))))
legend("topright",lwd=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_reactive_power)),type="n",xlab="datetime",ylab="Global_reactive_power")
with(mimo,lines(DateTime,as.numeric(as.character(Global_reactive_power)),col="black"))
dev.off()
