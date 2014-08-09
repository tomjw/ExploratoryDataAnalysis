
##   This script produces plots for the Coursera unit Exploratory dat Analysis- Project 1, 2014
##   Firstly read in data.  Only dates of 01/2/2007 and 02/02/2007 contained in
##   household_power_consumption12Feb.txt from github repo tomjw/ExploratoryDataAnalysis.

elec <- read.table('/home/tom/Dropbox/CourseraExploreData/household_power_consumption12Feb.txt',
                   sep =";" , header = TRUE)

##  find out which day of week dates refer to
elec["weekday"] <- weekdays(as.Date(elec$Date , "%d/%m/%Y"))


####################################################### plot2

png(filename = "plot2.png", width = 480, height = 480,
    units = "px", pointsize = 12)

plot(elec$Global_active_power,type = 'l', xlab="",
            ylab = "Global Active Power (kilowatts)" , xaxt = 'no')

axis(1, at = c(0,1464,2928),label = c('Thu','Fri','Sat'))

dev.off()



