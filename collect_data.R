#this script will prepare the data for next analysis

library(foreign)
library(stringr)
library(plyr)

#read data for 2006
setwd("2006")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2006
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2006
final_data_2006 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2006$Arson <- as.character(final_data_2006$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2006$FDID <- as.character(final_data_2006$FDID)

final_data_2006 <- join(fdheader,final_data_2006, by = "FDID")
final_data_2006 <- final_data_2006[,-1]

save(final_data_2006, file = "../final/final_data_2006.Rda")
###################################################

#read data for 2007
setwd("../2007")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2007
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2007
final_data_2007 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2007$Arson <- as.character(final_data_2007$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2007$FDID <- as.character(final_data_2007$FDID)

final_data_2007 <- join(fdheader,final_data_2007, by = "FDID")
final_data_2007 <- final_data_2007[,-1]

save(final_data_2007, file = "../final/final_data_2007.Rda")
###################################################
#read data for 2008
setwd("../2008")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2008
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2008
final_data_2008 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2008$Arson <- as.character(final_data_2008$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2008$FDID <- as.character(final_data_2008$FDID)

final_data_2008 <- join(fdheader,final_data_2008, by = "FDID")
final_data_2008 <- final_data_2008[,-1]

save(final_data_2008, file = "../final/final_data_2008.Rda")
###################################################
#read data for 2009
setwd("../2009")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2009
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2009
final_data_2009 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2009$Arson <- as.character(final_data_2009$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2009$FDID <- as.character(final_data_2009$FDID)

final_data_2009 <- join(fdheader,final_data_2009, by = "FDID")
final_data_2009 <- final_data_2009[,-1]

save(final_data_2009, file = "../final/final_data_2009.Rda")
###################################################
#read data for 2010
setwd("../2010")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2010
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2010
final_data_2010 <- rbind(set_1,set_2)
#check if the incident is present in arson
final_data_2010$Arson <- as.character(final_data_2010$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2010$FDID <- as.character(final_data_2010$FDID)

final_data_2010 <- join(fdheader,final_data_2010, by = "FDID")
final_data_2010 <- final_data_2010[,-1]

save(final_data_2010, file = "../final/final_data_2010.Rda")
###################################################
#read data for 2011
setwd("../2011")

arson <- read.dbf("arson.dbf")
basicincident <- read.dbf("basicincident.dbf")
fdheader <- read.dbf("fdheader.dbf")
incidentaddress <- read.dbf("incidentaddress.dbf")

#collect all data for year 2011
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2011
final_data_2011 <- rbind(set_1,set_2)
#check if the incident is present in arson
final_data_2011$Arson <- as.character(final_data_2011$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2011$FDID <- as.character(final_data_2011$FDID)

final_data_2011 <- join(fdheader,final_data_2011, by = "FDID")
final_data_2011 <- final_data_2011[,-1]

save(final_data_2011, file = "../final/final_data_2011.Rda")
###################################################
#read data for 2012
setwd("../2012")

arson <- read.table("arson.txt", sep = "^", header = TRUE)
basicincident <- read.table("basicincident.txt", sep = "^", header = TRUE)
fdheader <- read.table("fdheader.txt", sep = "^", header = TRUE)
incidentaddress <- read.table("incidentaddress.txt", sep = "^", header = TRUE)

#collect all data for year 2010
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2012
final_data_2012 <- rbind(set_1,set_2)
#check if the incident is present in arson
final_data_2012$Arson <- as.character(final_data_2012$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2012$FDID <- as.character(final_data_2012$FDID)

final_data_2012 <- join(fdheader,final_data_2012, by = "FDID")
final_data_2012 <- final_data_2012[,-1]

save(final_data_2012, file = "../final/final_data_2012.Rda")
###################################################
#read data for 2013
setwd("../2013")

arson <- read.table("arson.txt", sep = "^", header = TRUE)
basicincident <- read.table("basicincident.txt", sep = "^", header = TRUE)
fdheader <- read.table("fdheader.txt", sep = "^", header = TRUE)
incidentaddress <- read.table("incidentaddress.txt", sep = "^", header = TRUE)

#collect all data for year 2010
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2013
final_data_2013 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2013$Arson <- as.character(final_data_2013$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2013$FDID <- as.character(final_data_2013$FDID)

final_data_2013 <- join(fdheader,final_data_2013, by = "FDID")
final_data_2013 <- final_data_2013[,-1]

save(final_data_2013, file = "../final/final_data_2013.Rda")
###################################################
#read data for 2014
setwd("../2014")

arson <- read.table("arson.txt", sep = "^", header = TRUE)
basicincident <- read.table("basicincident.txt", sep = "^", header = TRUE)
fdheader <- read.table("fdheader.txt", sep = "^", header = TRUE)
incidentaddress <- read.table("incidentaddress.txt", sep = "^", header = TRUE)

#collect all data for year 2010
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2014
final_data_2014 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2014$Arson <- as.character(final_data_2014$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2014$FDID <- as.character(final_data_2014$FDID)

final_data_2014 <- join(fdheader,final_data_2014, by = "FDID")
final_data_2014 <- final_data_2014[,-1]

save(final_data_2014, file = "../final/final_data_2014.Rda")
###################################################
#read data for 2015
setwd("../2015")

arson <- read.table("arson.txt", sep = "^", header = TRUE)
basicincident <- read.table("basicincident.txt", sep = "^", header = TRUE)
fdheader <- read.table("fdheader.txt", sep = "^", header = TRUE)
incidentaddress <- read.table("incidentaddress.txt", sep = "^", header = TRUE)

#collect all data for year 2010
final_data <- incidentaddress[,c(1:4,9:10,13)]

#correct format of date
set_1 <- final_data[which(str_length(final_data$INC_DATE) == 7),]
set_2 <- final_data[which(str_length(final_data$INC_DATE) == 8),]

set_1$INC_DATE <- as.Date(paste(substr(set_1$INC_DATE,1,1),substr(set_1$INC_DATE,2,3),substr(set_1$INC_DATE,4,7)),"%m %d %Y")
set_2$INC_DATE <- as.Date(paste(substr(set_2$INC_DATE,1,2),substr(set_2$INC_DATE,3,4),substr(set_2$INC_DATE,5,8)),"%m %d %Y")

#final data 2015
final_data_2015 <- rbind(set_1,set_2)

#check if the incident is present in arson
final_data_2015$Arson <- as.character(final_data_2015$INC_NO) %in% as.character(arson$INC_NO)

#lookup for fdhead name
fdheader <- fdheader[,c(2,3)]
fdheader$FDID <- as.character(fdheader$FDID)
final_data_2015$FDID <- as.character(final_data_2015$FDID)

final_data_2015 <- join(fdheader,final_data_2015, by = "FDID")
final_data_2015 <- final_data_2015[,-1]

save(final_data_2015, file = "../final/final_data_2015.Rda")
###################################################