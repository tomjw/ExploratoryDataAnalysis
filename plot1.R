
##   This script produces plots for the Coursera unit Exploratory dat Analysis- Project 1, 2014
##   Firstly read in data.  Only dates of 01/2/2007 and 02/02/2007 contained in
##   household_power_consumption12Feb.txt from github repo tomjw/ExploratoryDataAnalysis.

elec <- read.table('/home/tom/Dropbox/CourseraExploreData/household_power_consumption12Feb.txt',
                   sep =";" , header = TRUE)

##  find out which day of week dates refer to
elec["weekday"] <- weekdays(as.Date(elec$Date , "%d/%m/%Y"))


######################################################### plot1

png(filename = "plot1.png", width = 480, height = 480,
    units = "px", pointsize = 12)

hist(elec$Global_active_power,col ="red", 
           xlab = "Global Active Power (kilowatts)",
           main ="Global Active Power")

dev.off()


