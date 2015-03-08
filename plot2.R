# imports library and subsets
library(datasets)
mimo<-read.table("./household_power_consumption.txt",sep=";",header=TRUE)
kk<-as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-01"|as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-02"
mimo<-mimo[kk,]

#creates the graphical output in quartz(), or similar graphic device
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_active_power)),type="n",xlab="",ylab="Global Active Power (kilowatts)")
with(mimo,lines(DateTime,as.numeric(as.character(Global_active_power))))

#creates the .png graphic output
png(file="plot2.png",width=480,height=480)
plot(mimo$DateTime,as.numeric(as.character(mimo$Global_active_power)),type="n",xlab="",ylab="Global Active Power (kilowatts)")
with(mimo,lines(DateTime,as.numeric(as.character(Global_active_power))))
dev.off()