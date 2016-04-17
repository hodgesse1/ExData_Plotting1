png(file="plot2.png")
with(watt1.df,plot(DT1,Global_active_power,type="l",
                    ylab="Global Active Power (kilowatts)",xlab=" "))
dev.off()
