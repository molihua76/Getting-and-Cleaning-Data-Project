# Getting and Cleaning Data Project
  This repository include the R code and corresponding documents for the Course project "Getting and Cleaning data"

## Raw Data
   Human Activity Recognition Using Smartphones Dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
   The dataset includes the following files:
	* 'README.txt'
	* 'features_info.txt': Shows information about the variables used on the feature vector.
	* 'features.txt': List of all features.
	* 'activity_labels.txt': Links the class labels with their activity name.
	* 'train/X_train.txt': Training set.
	* 'train/y_train.txt': Training labels.
	* 'test/X_test.txt': Test set.
	* 'test/y_test.txt': Test labels.

##  Project Requirement
    The purpose of this project is to demonstrate the ability to collect, work with and clean a data set.
	The R script is created to do the following
	  * Merges the training and the test sets to create one data set.
	  * Extracts only the measurements on the mean and standard deviation for each measurement.
	  * Uses descriptive activity names to name the activities in the data set
	  * Appropriately labels the data set with descriptive variable names.
	  * Create a second, independent tidy data set with the average of each variable for each activity and each subject.

##  Final Dataset
    Totally four files are submitted as the output of this project:
	  * R script "run_analysis.R" 
	  * ReadMe markdown document "README.md"
	  * Codebook markdown document "Codebook.md"
	  * Tidy data text file "tidydata.txt" 
	  