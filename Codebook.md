# Code Book for Getting and Cleaning Data Project
  This code book is the data dictionary for project Getting and Cleaning Data.
    
## Project Description
  - The objective of the project is practice how to clean the raw data for analysis.
  - The raw data is from experiments about human activity recognition using Smartphones. 
  - The experiments have been carried out with a group of 30 volunteers. Each person performed six activities.
  - The experimental dataset has been randomly partitioned into two sets: train and test.

## Data Source and Processing
### Data source
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Data processing
  R language is used for the script run_analysis.R which performs the 5 steps as required:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Dictionary
### Activity labels  
  Variable activityId 1-6 represents six activities subject did during the experiments.
  * WALKING: 1 
  * WALKING_UPSTAIRS: 2 
  * WALKING_DOWNSTAIRS: 3 
  * SITTING: 4 
  * STANDING: 5 
  * LAYING: 6 

### Measurements
* timeBodyAccelerator-mean-X
* timeBodyAccelerator-mean-Y
* timeBodyAccelerator-mean-Z
* timeBodyAccelerator-std-X
* timeBodyAccelerator-std-Y
* timeBodyAccelerator-std-Z
* timeGravityAccelerator-mean-X
* timeGravityAccelerator-mean-Y
* timeGravityAccelerator-mean-Z
* timeGravityAccelerator-std-X
* timeGravityAccelerator-std-Y
* timeGravityAccelerator-std-Z
* timeBodyAcceleratorJerk-mean-X
* timeBodyAcceleratorJerk-mean-Y
* timeBodyAcceleratorJerk-mean-Z
* timeBodyAcceleratorJerk-std-X
* timeBodyAcceleratorJerk-std-Y
* timeBodyAcceleratorJerk-std-Z
* timeBodyGyroscope-mean-X
* timeBodyGyroscope-mean-Y
* timeBodyGyroscope-mean-Z
* timeBodyGyroscope-std-X
* timeBodyGyroscope-std-Y
* timeBodyGyroscope-std-Z
* timeBodyGyroscopeJerk-mean-X
* timeBodyGyroscopeJerk-mean-Y
* timeBodyGyroscopeJerk-mean-Z
* timeBodyGyroscopeJerk-std-X
* timeBodyGyroscopeJerk-std-Y
* timeBodyGyroscopeJerk-std-Z
* timeBodyAcceleratorMagnitude-mean
* timeBodyAcceleratorMagnitude-std
* timeGravityAcceleratorMagnitude-mean
* timeGravityAcceleratorMagnitude-std
* timeBodyAcceleratorJerkMagnitude-mean
* timeBodyAcceleratorJerkMagnitude-std
* timeBodyGyroscopeMagnitude-mean
* timeBodyGyroscopeMagnitude-std
* timeBodyGyroscopeJerkMagnitude-mean
* timeBodyGyroscopeJerkMagnitude-std
* frequencyBodyAccelerator-mean-X
* frequencyBodyAccelerator-mean-Y
* frequencyBodyAccelerator-mean-Z
* frequencyBodyAccelerator-std-X
* frequencyBodyAccelerator-std-Y
* frequencyBodyAccelerator-std-Z
* frequencyBodyAcceleratorJerk-mean-X
* frequencyBodyAcceleratorJerk-mean-Y
* frequencyBodyAcceleratorJerk-mean-Z
* frequencyBodyAcceleratorJerk-std-X
* frequencyBodyAcceleratorJerk-std-Y
* frequencyBodyAcceleratorJerk-std-Z
* frequencyBodyGyroscope-mean-X
* frequencyBodyGyroscope-mean-Y
* frequencyBodyGyroscope-mean-Z
* frequencyBodyGyroscope-std-X
* frequencyBodyGyroscope-std-Y
* frequencyBodyGyroscope-std-Z
* frequencyBodyAcceleratorMagnitude-mean
* frequencyBodyAcceleratorMagnitude-std
* frequencyBodyBodyAcceleratorJerkMagnitude-mean
* frequencyBodyBodyAcceleratorJerkMagnitude-std
* frequencyBodyBodyGyroscopeMagnitude-mean
* frequencyBodyBodyGyroscopeMagnitude-std
* frequencyBodyBodyGyroscopeJerkMagnitude-mean
* frequencyBodyBodyGyroscopeJerkMagnitude-std

### Subject
   subjectId 1-30 represents the ID of the thirty test subjects.