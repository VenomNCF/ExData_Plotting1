##Load data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="myfile.zip")
unzip("myfile.zip")
mydata <- read.table("household_power_consumption.txt",header=TRUE, sep=";",nrows=2880,skip=66637)

##Plot
png(filename="plot1.png")
hist(mydata[,3],breaks=12,xlab="Global Active Power (kilowatts)",main="Global Active Power",col='red')
dev.off()


