##Load data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="myfile.zip")
unzip("myfile.zip")
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";",nrows=2880,skip=66637)

##Combine data and time columns
DateTime = paste(mydata[,1],mydata[,2])

##Plot
png(filename="plot2.png")
plot(strptime(DateTime,format="%d/%m/%Y%H:%M:%S"), mydata[,3], type = "l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()













