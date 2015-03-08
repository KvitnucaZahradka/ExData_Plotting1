# imports library and subsets
library(datasets)
mimo<-read.table("./household_power_consumption.txt",sep=";",header=TRUE)
kk<-as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-01"|as.Date(mimo$Date,format="%d/%m/%Y")=="2007-02-02"
mimo<-mimo[kk,]

#creates the graphical output in quartz(), or similar graphic device
hist(as.numeric(as.character(mimo$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")

#creates the .png graphic output
png(file="plot1.png",width=480,height=480)
hist(as.numeric(as.character(mimo$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
                