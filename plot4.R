#The Grand Finale

 png(file="plot4.png")
 par(mfrow=c(2,2))
  with(watt1.df,plot(DT1,Global_active_power,type="l",xlab=" ",
                       ylab="Global Active Power"))
  
        with(watt1.df,plot(DT1,Voltage,type="l",xlab=" ",
                             ylab="Voltage"))
 
        with(watt1.df,plot(DT1,Sub_metering_1,type="l",ylab="Energy sub metering",ylim=c(0,submax),xlab=" "))
  lines(watt1.df$DT1,watt1.df$Sub_metering_2,col="red")
  lines(watt1.df$DT1,watt1.df$Sub_metering_3,col="blue")
  
        legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.8,bty="n")
 
        with(watt1.df,plot(DT1,Global_reactive_power,type="l",xlab="datetime",
                            ylab="Global Reactive Power"))
 dev.off()
 par(mfrow=c(1,1))
 
