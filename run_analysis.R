## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



# specify working directory
setwd("C:/Coursera/GettingAndCleaningData/Project")

# load required library
library(data.table)
library(dplyr)


# read in metadata that describe features and actities
featuresLabels <- read.table("./UCI HAR Dataset/features.txt")              # 561 features labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)   # 6 activity labels



# Read in Train data
# subjectTrain : each row identifies the subject who performed the activity (21 out of 30 volunteers in Train.)
# activityTrain : 6 activities
# featuresTrain : 561 features
subjectTrain  <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)     # 7352 rows, 561 columns 


# Read in Test data
# subjectTest : 9 out of 30 volunteers in test data
# activityTest : 6 activities
# featuresTest : 561 features
subjectTest  <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)     # 2947 rows,561 columns



## 1. Merges the training and the test sets to create one data set.
subject  <- rbind(subjectTrain,  subjectTest)        # dim(subject)  give 10299 and 1
activity <- rbind(activityTrain, activityTest)       # dim(activity) give 10299 and 1
features <- rbind(featuresTrain, featuresTest)       # dim(features) give 10299 and 561



# assign names to features from featuresLable
colnames(features) <- t(featuresLabels[2])
# assign names manually for subject and activity
colnames(subject) <- "Subject" 
colnames(activity) <- "Activity" 



# combine the columns of features, subjects and activity
mergedData <- cbind(features, subject, activity)       # names(mergedData) gives 563 names 
       




## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# index of columns of means or standard deviation
names.Mean.SD.idx <- grep("mean|std", names(mergedData), ignore.case=TRUE)

# columns with only mean and standard deviation  
Mean.SD.Data <- mergedData[,names.Mean.SD.idx]     # dim(Mean.SD.Data) give 10299 rows 86 variables
names(Mean.SD.Data )




# add the columne of activities and subject
extractedData <- cbind(Mean.SD.dData, mergedData[, c(562,563)])   # dim(extractedData) give 10299 rows 88 variables



## 3. Uses descriptive activity names to name the activities in the data set
# change from numeric to character , to be able to accept descriptive values
# attach descriptive values
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
        extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}






## 4. Appropriately labels the data set with descriptive variable names.
# replace Acc by Accelerometer
# replace Gyro by Gyroscope
# replace BodyBody by Body
# replace Mag by Magnitude
# replace f by Frequency
# replace t by Time
# remove () in the names
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))
names(extractedData)<-gsub("\\()", "",names(extractedData) ,)



## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)



# calculate avearge by subject and Activity
tidyData <- aggregate(. ~ Subject + Activity, data = extractedData, FUN=mean, na.rm=TRUE)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]

# output a Tidy.txt file for the summarised data
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)      # write the average to Tidy.txt
