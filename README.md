# GettingAndCleaningData
This repository is for the purpose of submitting course assignment for Getting And Cleaning Data


# Steps of the run_analysis.R file
The run_analysis.R file read accerlerometers and gyroscrope data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, then calculate the means of each measuremnt and output it in a Tidy.txt file. 


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# library
data.table and dplyr 

# Data Structure
features.txt : 561 features
activity_labels.txt : 6 activities labels
subjects : 30 persons (31 train and 9 test)


# Read in train Data
subjectTrain  <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)  









