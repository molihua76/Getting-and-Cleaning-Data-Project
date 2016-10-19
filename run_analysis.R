# Coursera Getting and Cleaning Data Course Project
# Project requirements:

# 0. download UCI HAR Dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 1. Merges the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#------------------------------------------------------------------------------------------

# Clean up workspace
rm(list=ls())

# Set working directory 
setwd('C:/Users/Jasmine/Desktop/My Study/Johns Hopkins/3 Cleaning Data/WorkingDirectory')

# Download file to a temporary folder and unzip dataset
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
unzip(temp, list = TRUE)

# Read the test dataset
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read the train dataset
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read features vector
features <- read.table("./UCI HAR Dataset/features.txt")

# Read the activity labels
activityLabels = read.table("./UCI HAR Dataset/activity_labels.txt")

#
unlink(temp)

#Step1: Merge data to create one dataset
#------------------------------------------------------------------------------------------

# combine xtrain and xtest to generate x dataset 
xdata <- rbind(xtrain, xtest)

# combine ytrain and ytest to generate y dataset 
ydata <- rbind(ytrain, ytest)

# combine subjecttrain and subjecttest to generate subject dataset 
subjectdata <- rbind(subjecttrain, subjecttest)

# Assign column name to above three datasets
colnames(xdata) <- features[,2] 
colnames(ydata) <-"activityId"
colnames(subjectdata) <- "subjectId"

# Combine all data (x,y,subject) together to create one dataset called mydata
mydata <- cbind(ydata, subjectdata, xdata)

# Step2: extract mean and standard deviation only
#------------------------------------------------------------------------------------------

# extract columns include mean() and std() in their name
meanandstd <- grepl("activityId|subjectId|mean\\(\\)|std()\\(\\)", names(mydata))
extracteddata<-mydata[,meanandstd]


# Step3: Use descriptive activity names to name the activities in the data set
#-------------------------------------------------------------------------------------------
extracteddata$activityId <- factor(extracteddata$activityId, levels = activityLabels[,1], labels = activityLabels[,2])


# Step4: Label the data set with descriptive activity names
#------------------------------------------------------------------------------------------------

#Clean up the variable names
names(extracteddata) <- gsub("Acc", "Accelerator", names(extracteddata))
names(extracteddata) <- gsub("Mag", "Magnitude", names(extracteddata))
names(extracteddata) <- gsub("Gyro", "Gyroscope", names(extracteddata))
names(extracteddata) <- gsub("^t", "time", names(extracteddata))
names(extracteddata) <- gsub("^f", "frequency", names(extracteddata))
names(extracteddata) <- gsub("mean\\(\\)", "mean", names(extracteddata))
names(extracteddata) <- gsub("std\\(\\)", "std", names(extracteddata))

# Step5:Create a tidy dataset with the average of each variable for each activity and each subject
#-----------------------------------------------------------------------------------------------
#melt data firstly then dcast
library(reshape2)
melteddata <- melt(extracteddata, id = c("activityId","subjectId"))
seconddata<- dcast(melteddata, activityId + subjectId ~ variable, mean)

#Export the tidy data
write.table(seconddata, "tidydata.txt", row.names = FALSE)


