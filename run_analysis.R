## Getting and Cleaning Data Course Project

# You should create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.

# Load general info
measure.names <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F) # measure names
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F) # activity label names

# Load test data
test.data <- read.table("./UCI HAR Dataset/test/X_test.txt") # test data
test.activity <- read.table("./UCI HAR Dataset/test/y_test.txt") # activities
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt") # person ID

names(test.data) <- measure.names[,2] # assign measure names to columns

treatment.test <- rep_len("test", length(test.subject[,1]))

# Combine data with subject IDs and activity labels
test.data <- cbind(test.subject[,1], test.activity[,1], treatment.test, test.data)
names(test.data)[1:3] <- c("subjectID", "activity", "treatment")


# Load train data
train.data <- read.table("./UCI HAR Dataset/train/X_train.txt") # train data
train.activity <- read.table("./UCI HAR Dataset/train/y_train.txt") # activities
train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt") # person ID

names(train.data) <- measure.names[,2] # assign measure names to columns

treatment.train <- rep_len("train", length(train.subject[,1]))

# Combine data with subject IDs and activity labels
train.data <- cbind(train.subject[,1], train.activity[,1], treatment.train, train.data)
names(train.data)[1:3] <- c("subjectID", "activity", "treatment")


# combine both train and test data
data <- rbind(test.data, train.data)


# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.
# get a vector of all column names that contain "mean" or "std" 
mean.cols <- grep("mean\\(", names(data), ignore.case = T)
std.cols <- grep("std\\(", names(data), ignore.case = T)
rel.cols <- c(mean.cols, std.cols) # join vectors
rel.cols <- sort(rel.cols) # order ascendingly so that columns remain in the same order

# subset data to relevant columns
rel.data <- data[, c(1:3, rel.cols)]


# 3. Uses descriptive activity names to name the activities in the data set

rel.data$activity <- as.factor(rel.data$activity)
levels(rel.data$activity) <- activity.labels[,2]

# 4. Appropriately labels the data set with descriptive variable names. 
names(rel.data) <- gsub("-mean\\(\\)-", ".mean.", names(rel.data))
names(rel.data) <- gsub("-std\\(\\)-", ".std.", names(rel.data))
names(rel.data) <- gsub("-mean\\(\\)", ".mean", names(rel.data))
names(rel.data) <- gsub("-std\\(\\)", ".std", names(rel.data))
names(rel.data) <- gsub("BodyAcc", "Body.Acceleration", names(rel.data))
names(rel.data) <- gsub("GravityAcc", "Gravity.Acceleration", names(rel.data))
names(rel.data) <- gsub("BodyGyro", "Body.Gyroscope", names(rel.data))
names(rel.data) <- gsub("Mag", ".Mag", names(rel.data))
names(rel.data) <- gsub("Jerk", ".Jerk", names(rel.data))
names(rel.data) <- gsub("fBodyBody", "fBody", names(rel.data))



# 5. From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.

library(reshape2)
rel.data2 <- aggregate(rel.data[,4:69], 
                       by = list(subjectID = rel.data$subjectID, 
                                 activity = rel.data$activity,
                                 treatment = rel.data$treatment),
                       FUN = mean)

# reorder data by subjectID and then activity
library(dplyr)
rel.data2 <- arrange(rel.data2, subjectID, activity)
