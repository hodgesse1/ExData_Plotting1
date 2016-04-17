#Bring in the Data
watt.df <- read.table(file="household_power_consumption.txt",
                      sep=";",stringsAsFactors = FALSE,header=TRUE,
                      na.strings="?")
#Double check data frame structure
str(watt.df)
#Scale down to a smaller set
watt1.df <- subset(watt.df,Date=="1/2/2007" | Date=="2/2/2007")
#Another check
str(watt1.df)
#Construct Date/Time
watt1.df$DT1 <- strptime(paste(watt1.df$Date,watt1.df$Time),"%d/%m/%Y %H:%M:%S")

#Now for the Plotting o Rama!

png(file="plot1.png")
hist(watt1.df$Global_active_power,main="Global Active Power",
      xlab="Global Active Power (kilowatts)",col="red")
dev.off()


png(file="plot2.png")
with(watt1.df,plot(DT1,Global_active_power,type="l",
                    ylab="Global Active Power (kilowatts)",xlab=" "))
dev.off()


png(file="plot3.png")
with(watt1.df,plot(DT1,Sub_metering_1,type="l",ylab="Energy sub metering",ylim=c(0,submax),xlab=" "))
 lines(watt1.df$DT1,watt1.df$Sub_metering_2,col="red")
 lines(watt1.df$DT1,watt1.df$Sub_metering_3,col="blue")
 legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.8)
 dev.off()
 
      
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
 
      