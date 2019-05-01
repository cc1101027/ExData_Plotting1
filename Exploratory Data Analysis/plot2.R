hpc = read.delim('household_power_consumption.txt',sep = ';')
hpc$Date = as.Date(as.character(hpc$Date),'%d/%m/%Y')
hpc$Global_active_power = as.numeric(as.character(hpc$Global_active_power))
hpc = subset(hpc, hpc$Date >= '2007-02-01' & hpc$Date <= '2007-02-02')
DT = as.POSIXct(paste(hpc$Date,hpc$Time), format = '%Y-%m-%d %H:%M:%S')
png(filename = 'plot2.png', width = 480, height = 480)
plot(hpc$Global_active_power~DT , type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()

