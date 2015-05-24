# GettingAndCleaningData
This repository is for the purpose of submitting course assignment for Getting And Cleaning Data


## Steps of the run_analysis.R file
The run_analysis.R file read accerlerometers and gyroscrope data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, then calculate the means of each measuremnt and output it in a Tidy.txt file. 


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### library used
* data.table and dplyr 

### Data Structure
* features.txt : 561 features
* activity_labels.txt : 6 activities labels
* subjects : 30 persons (31 train and 9 test)


### Read in train Data for subject, activities and features respectively
* subjectTrain  <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
* activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
* featuresTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE) 


### Read in test Data for subject, activities and features respectively
* subjectTest  <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
* activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
* featuresTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE) 



## 1. Merges the training and the test sets to create one data set.
* subject  <- rbind(subjectTrain,  subjectTest)       
* activity <- rbind(activityTrain, activityTest)      
* features <- rbind(featuresTrain, featuresTest) 
 

### Assign names manually for subject and activity
* colnames(features) <- t(featuresLabels[2])
* colnames(subject) <- "Subject" 
* colnames(activity) <- "Activity" 

### Combine the columns of features, subjects and activity
* mergedData <- cbind(features, subject, activity) 


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
### obtain index of columns of means or standard deviation
* names.Mean.SD.idx <- grep("mean|std", names(mergedData), ignore.case=TRUE)

### Columns with only mean and standard deviation  
* Mean.SD.Data <- mergedData[,names.Mean.SD.idx]     

### add the columne of activities and subject
* extractedData <- cbind(Mean.SD.dData, mergedData[, c(562,563)])   # dim(extractedData) give 10299 rows 88 variables


## 3. Uses descriptive activity names to name the activities in the data set
### change from numeric to character , to be able to accept descriptive values
### attach descriptive values
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
        extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}




## 4. Appropriately labels the data set with descriptive variable names.
##### replace Acc by Accelerometer
##### replace Gyro by Gyroscope
##### replace BodyBody by Body
##### replace Mag by Magnitude
##### replace f by Frequency
##### replace t by Time
* names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
* names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
* names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
* names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
* names(extractedData)<-gsub("^t", "Time", names(extractedData))
* names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
* names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
* names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
* names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
* names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
* names(extractedData)<-gsub("angle", "Angle", names(extractedData))
* names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))



## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* extractedData$Subject <- as.factor(extractedData$Subject)
* extractedData <- data.table(extractedData)


###  Calculate avearge by subject and Activity
* tidyData <- aggregate(. ~ Subject + Activity, data = extractedData, FUN=mean, na.rm=TRUE)
* tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
* write.table(tidyData, file = "Tidy.txt", row.names = FALSE)  
