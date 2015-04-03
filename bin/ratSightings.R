# Code for rat sightings visualizations of NYC
# ~Jim Hayes
#
# 04/03/2015

library(ggplot2)
setwd("~/Documents/dataScience/rat/")


# Download and Read census files
# census
if(!file.exists("data/census2010.csv")) {
    fileURL<-"http://www2.census.gov/geo/docs/maps-data/data/rel/zcta_tract_rel_10.txt"
    download.file(fileURL, destfile="census2010.csv", method="curl")
}
censusData <- read.csv("data/census2010.csv", header=TRUE)


# Download and read rat data
if(!file.exists("data/Rat_Sightings.csv")) {
    #Note, this file was download from NYC Open Data. I couldn't find a directed downlaod to the CSV of rat data, so download it and put it in the appropriate folder.
    # URL = https://data.cityofnewyork.us/Social-Services/Rat-Sightings/3q43-55fe
    kill(1)
}

ratData <- read.csv("data/Rat_Sightings.csv", header=TRUE)
# Remove entries w/out a reported borough
unspecifiedBorough <- ratData$Borough=="Unspecified"
ratData <- ratData[!unspecifiedBorough,]


# Breakdown of rat sightings by borough
b <- ggplot(ratData, aes(factor(Borough)))
print(b + geom_bar(width=0.75) + xlab("Borough") + ylab("Rat Sightings") + ggtitle("Rat Sightings by Borough"))

# Boroguh and Location Type
l <- ggplot(ratData, aes(Location.Type, fill=Location.Type))
print(l + geom_bar(width=0.75) + xlab("Borough") + ylab("Rat Sightings") + ggtitle("Rat Sightings by Borough and Structure"))

# Type
#t <- ggplot(ratData, aes(x=factor()))

# Map of rat sightings.  Rats are found everywhere.
m <- ggplot(ratData, aes(y=Latitude, x=-(Longitude*-1)))
print(m + geom_point(aes(color=Borough), size=1, alpha=1/2) + xlab("Borough") + ylab("Rat Sightings") + ggtitle("Rat happen everywhere in NYC"))
