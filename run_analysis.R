##You should create one R script called run_analysis.R that does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## 1. Merges the training and the test sets to create one data set

## Load general data
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)                   ## list of all features
activity_label <- read.table("./UCI HAR Dataset//activity_labels.txt",header=FALSE)     ## links the class labels with their activity name

## Load test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)               ## test set
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)               ## test labels
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)   ## identifies the subject who performed the activity for each window sample

## Load training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)            ## training set
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)            ## training labels
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)## identifies the subject who performed the activity for each window sample

## Assign column names to the general, test and training data
colnames(activity_label) <- c("ActivityId","ActivityType")
colnames(x_test) <- features[,2]
colnames(y_test) <- "ActivityId"
colnames(subject_test) <- "SubId"
colnames(x_train) <- features[,2]
colnames(y_train) <- "ActivityId"
colnames(subject_train) <- "SubId"

## Merging data
test_data <- cbind(y_test, subject_test, x_test)
train_data <- cbind(y_train, subject_train, x_train)

## Merging test and training data
final_data <- rbind(test_data, train_data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement

mean_std_data <- final_data[,grepl("ActivityId|SubId|mean|std",colnames(final_data))]

## 3. Uses descriptive activity names to name the activities in the data set

library(plyr)
mean_std_data <- join(mean_std_data, activity_label, by = "ActivityId", match = "first")        ## join activity names

## 4. Appropriately labels the data set with descriptive variable names.

## Replace parentheses with ""
names(mean_std_data) <- gsub("\\(|\\)", "", names(mean_std_data), perl = TRUE)

## Make syntactically valid names and replace dots
names(mean_std_data) <- make.names(names(mean_std_data))
names(mean_std_data) <- gsub("\\.", "", names(mean_std_data), perl = TRUE)

## Add descriptive names
names(mean_std_data) <- gsub("^t", "Time", names(mean_std_data))
names(mean_std_data) <- gsub("^f", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("Acc", "Acceleration", names(mean_std_data))
names(mean_std_data) <- gsub("Freq", "Frequency", names(mean_std_data))
names(mean_std_data) <- gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data) <- gsub("mean", "Mean", names(mean_std_data))
names(mean_std_data) <- gsub("std", "Std", names(mean_std_data))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy_data <- ddply(mean_std_data, c("SubId", "ActivityType"), numcolwise(mean))

write.table(tidy_data,file = "tidy_data.txt", row.names = FALSE)