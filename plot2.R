# coursera  exercise 2

# Loading the dataq set i  the current directory 
# Loading the data set datasets - loading from the current directory 
 NEI <- readRDS("summarySCC_PM25.rds")
 SCC <- readRDS("Source_Classification_Code.rds")
# we created a sample

NEI_sampling <- NEI[sample(nrow(NEI), size=5000, replace=F), ]

# we created a sub data set  from NEI data  
MD <- subset(NEI, fips=='24510')

# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
# from 1999 to 2008? Use the base plotting system to make a plot answering this question.


png(filename='~/Users/Leonardo/Downloads/exdata%2Fdata%2FNEI_data/plot2.png')

barplot(tapply(X=MD$Emissions, INDEX=MD$year, FUN=sum),        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))

dev.off()