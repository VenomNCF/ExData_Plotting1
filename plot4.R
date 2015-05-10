##Load data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="myfile.zip")
unzip("myfile.zip")
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";",nrows=2880,skip=66637)

##Combine data and time columns
DateTime = paste(mydata[,1],mydata[,2])

##Plot
png(filename="plot4.png")
attach(mtcars)
par(mfrow=c(2,2))

##top left
plot(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,3], type = "l",ylab="Global Active Power (kilowatts)",xlab="")

##top right
plot(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,5], type = "l",ylab="Voltage",xlab="datetime")

##bottom left
plot(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,7], type = "l",ylab="Energy sub metering",xlab="")
lines(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,8], type = "l",col='red')
lines(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,9], type = "l",col='blue')
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",labels,col=c("black","red","blue"),lty=c(1,1,1))

##bottom right
plot(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,4], type = "l",ylab="Global_reactive_power",xlab="datetime")

dev.off()






