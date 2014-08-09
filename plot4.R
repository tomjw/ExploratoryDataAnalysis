
##   This script produces plots for the Coursera unit Exploratory dat Analysis- Project 1, 2014
##   Firstly read in data.  Only dates of 01/2/2007 and 02/02/2007 contained in
##   household_power_consumption12Feb.txt from github repo tomjw/ExploratoryDataAnalysis.

elec <- read.table('/home/tom/Dropbox/CourseraExploreData/household_power_consumption12Feb.txt',
                   sep =";" , header = TRUE)

##  find out which day of week dates refer to
elec["weekday"] <- weekdays(as.Date(elec$Date , "%d/%m/%Y"))


####################################################  plot4


png(filename = "plot4.png", width = 480, height = 480,
    units = "px", pointsize = 12)
par(mfrow=c(2,2))

plot(elec$Global_active_power,type = 'l', xlab="",
     ylab = "Global Active Power"
     , xaxt = 'no')
axis(1, at = c(0,1464,2928),label = c('Thu','Fri','Sat'))

plot(elec$Voltage, type = 'l', xlab="datetime",
     ylab = "Voltage" , xaxt = 'no')
axis(1, at = c(0,1464,2928),label = c('Thu','Fri','Sat'))

plot(elec$Sub_metering_1,type = 'n', xlab="",
     ylab = "Energy sub metering" , xaxt = 'no')
lines(elec$Sub_metering_1, col='black')
lines(elec$Sub_metering_2, col='red')
lines(elec$Sub_metering_3, col='blue')
axis(1, at = c(0,1464,2928),label = c('Thu','Fri','Sat'))
legend('topright', legend =c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col = c('black','red','blue'),lty = 1,bty ='n')

plot(elec$Global_reactive_power, type = 'l', xlab="datetime",
     ylab = "Global_reactive_power" , xaxt = 'no')
axis(1, at = c(0,1464,2928),label = c('Thu','Fri','Sat'))

dev.off()
