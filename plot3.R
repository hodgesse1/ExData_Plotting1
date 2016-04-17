png(file="plot3.png")
with(watt1.df,plot(DT1,Sub_metering_1,type="l",ylab="Energy sub metering",ylim=c(0,submax),xlab=" "))
 lines(watt1.df$DT1,watt1.df$Sub_metering_2,col="red")
 lines(watt1.df$DT1,watt1.df$Sub_metering_3,col="blue")
 legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.8)
 dev.off()
 
