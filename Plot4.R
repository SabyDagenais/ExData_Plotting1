> myData_subset$Global_reactive_powerN <- as.numeric(as.character(myData_subset$Global_reactive_power))
> myData_subset$VoltageN <- as.numeric(as.character(myData_subset$Voltage))
> pdf(file='C:/Users/Saby/Desktop/Summer/CourseEra/Data Exploratory analysis/Plot4.pdf')
> par(mfrow=c(2,2))
>  with(myData_subset, {
+ plot(myData_subset$Time,myData_subset$Global_active_power, type="l", ylim=c(0,8))
+ plot(myData_subset$Time, myData_subset$VoltageN, type="l", ylim=c(230,250))
+ plot(myData_subset$Time,myData_subset$Sub_metering_11, col=rgb(1,0,0,0.5), type="l", ylim=c(0,40))
+  plot(myData_subset$Time,myData_subset$Sub_metering_22,col=rgb(0,0,1,0.5), type="l", ylim=c(0,40), add=T)
+  plot(myData_subset$Time,myData_subset$Sub_metering_33, col=rgb(0.8,0.8,0.8,0.5), type="l", ylim=c(0,40), add=T)
+ legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), fill=c("blue","red","grey"))
+  plot(myData_subset$Time,myData_subset$Global_reactive_powerN, type="l", ylim=c(0,0.5))
+ })
> dev.off()
null device 
          1 