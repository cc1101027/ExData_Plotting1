hpc = read.delim('household_power_consumption.txt',sep = ';')
hpc$Date = as.Date(as.character(hpc$Date),'%d/%m/%Y')
hpc$Sub_metering_1 = as.numeric(as.character(hpc$Sub_metering_1))
hpc$Sub_metering_2 = as.numeric(as.character(hpc$Sub_metering_2))
hpc$Sub_metering_3 = as.numeric(as.character(hpc$Sub_metering_3))
hpc = subset(hpc, hpc$Date >= '2007-02-01' & hpc$Date <= '2007-02-02')
DT = as.POSIXct(paste(hpc$Date,hpc$Time), format = '%Y-%m-%d %H:%M:%S')
png(filename = 'plot3.png', width = 480, height = 480)
plot(hpc$Sub_metering_1~DT, type = 'o', pch = NA_integer_, col = 'black', xlab = '', ylab = 'Energy sub metering')
lines(hpc$Sub_metering_2~DT, type = 'o', pch = NA_integer_, col = 'red', xlab = '', ylab = 'Energy sub metering')
lines(hpc$Sub_metering_3~DT, type = 'o', pch = NA_integer_, col = 'blue', xlab = '', ylab = 'Energy sub metering')
legend ('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1, pch = NA_integer_)
dev.off()


