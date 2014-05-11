data=read.table("C:/Users/Shrabanti/Desktop/data.txt",sep=';')
sub_metering1=data[,7]
sub_metering2=data[,8]
sub_metering3=data[,9]
x=data[,2]

par1=par(mfrow=c(2,2))
plot(x,data[,3],ylab="Global Active Power (kilowatts)",type="l")
plot(x,data[,5],ylab="Voltage",type="l")
plot(x,sub_metering1,col="black",ylab="Energy Sub_metering",type="l")
points(x,sub_metering2,col="red",type="l")
points(x,sub_metering3,col="blue",type="l")
plot(x,data[,4],ylab="Global Reactive Power (kilowatts)",type="l")
par(par1)
dev.copy(png,'C:/Users/Shrabanti/Desktop/Plot4.png',width=480,height=480)
dev.off()
