hpc = read.delim('household_power_consumption.txt',sep = ';')
hpc$Date = as.Date(as.character(hpc$Date),'%d/%m/%Y')
hpc$Global_active_power = as.numeric(as.character(hpc$Global_active_power))
hpc = subset(hpc, hpc$Date >= '2007-02-01' & hpc$Date <= '2007-02-02')
png(filename = 'plot1.png', width = 480, height = 480)
hist(hpc$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
dev.off()



