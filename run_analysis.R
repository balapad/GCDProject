## Download data, if required
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName<-"data"
dest<-paste("./",fileName,".zip",sep="")
if(!file.exists(dest)){
    download.file(url=fileUrl,destfile=dest,method="curl")
    ## Unzip the data set and echo contents of data zip
    unzip(zipfile=dest)
}
## Load packages
library(plyr)
library(dplyr)
library(data.table)
library(tidyr)
library(stringr)
## Read the data in
## Read features info
filePath<-"./UCI HAR Dataset"
fileName<-"features.txt"
features<-tbl_df(read.table(file.path(filePath, "features.txt")))
features$V2<-tolower(features$V2)
## Read test data
filePath<-"./UCI HAR Dataset/test"
testX<-tbl_df(read.table(file.path(filePath, "X_test.txt")))
testSub<-tbl_df(read.table(file.path(filePath, "subject_test.txt")))
testY<-tbl_df(read.table(file.path(filePath, "y_test.txt")))
## Read train data
filePath<-"./UCI HAR Dataset/train"
trainX<-tbl_df(read.table(file.path(filePath, "X_train.txt")))
trainSub<-tbl_df(read.table(file.path(filePath, "subject_train.txt")))
trainY<-tbl_df(read.table(file.path(filePath, "y_train.txt")))
## Merge the data
## Distinguishing training and test subject codes will be stored or known elsewhere
theData <- rbind(testX, trainX)
theDataY <- rbind(testY, trainY)
theDataSub <- rbind(testSub, trainSub)
##
theNames <- as.character(features$V2)
theNames <- make.names(theNames, unique=TRUE)
names(theData)<-theNames
##
names(theDataY)<- c("activity")
theData <- cbind(theDataY,theData)
names(theDataSub)<- c("subjects")
theData <- cbind(theDataSub,theData)
## Get the subset of data that contains the string mean
projData <- select(theData,subjects,activity,contains("mean"),contains("std"))
## Replace numerical codes with descriptive activity names
projData$activity <- plyr::mapvalues(projData$activity,from = c("1","2","3","4","5","6"),
                                     to = c("walking","walkingupstairs","walkingdownstairs","sitting","standing","lying"))
## Label table data appropriately
names(projData) <- str_replace_all(names(projData),"[.][.]","")
names(projData) <- str_replace_all(names(projData),"bodybody","body")
names(projData) <- str_replace_all(names(projData),"tbody","timebody")
names(projData) <- str_replace_all(names(projData),"fbody","freqbody")
names(projData) <- str_replace_all(names(projData),"tgravity","timegravity")
names(projData) <- str_replace_all(names(projData),"fgravity","freqgravity")
names(projData) <- str_replace_all(names(projData),"acc","acceleration")
names(projData) <- str_replace_all(names(projData),"mag","magnitude")
## 5
## Use split to create a list by activity and subjects
splitList <- split(select(projData,3:length(names(projData))),list(projData$subjects,projData$activity))
## Calculate the mean using lapply
meanList <-lapply(splitList,function(x) apply(x,2,mean, na.rm=TRUE))
## Convert back to data frame
q5data <- data.frame(t(sapply(meanList,c)))
## get back subjects and activity information from q5data rownames
subacc <- data.frame(t(sapply(strsplit(rownames(q5data),"[.]"),c)))
q5data <- tbl_df(cbind(subacc,q5data))
q5data <- dplyr::rename(q5data,subjects=X1,activity=X2)
q5data$subjects <- as.factor(q5data$subjects)
q5data$activity <- as.factor(q5data$activity)
rownames(q5data)<-NULL
## write to q5Data.txt
write.table(x=q5data,file=file.path("./","q5Data.txt"),row.names=FALSE)
