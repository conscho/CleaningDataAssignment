library(dplyr)
library(data.table)

# Read all relevant files
features <- fread("./UCI HAR Dataset/features.txt")
activities <- fread("./UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activity"))
activities$activity <- tolower(activities$activity)

trainActivity <- fread("./UCI HAR Dataset/train/y_train.txt")
trainSubject <- fread("./UCI HAR Dataset/train/subject_train.txt")
trainData <- fread("./UCI HAR Dataset/train/X_train.txt", col.names = features$V2)

testActivity <- fread("./UCI HAR Dataset/test/y_test.txt")
testSubject <- fread("./UCI HAR Dataset/test/subject_test.txt")
testData <- fread("./UCI HAR Dataset/test/X_test.txt", col.names = features$V2)

# Merge train and test dataset. Note that, data.table package overwrites the 
# original rbind and uses it's own more efficient implementation.
mergedActivity <- rbind(trainActivity, testActivity)
mergedSubject <- rbind(trainSubject, testSubject)
mergedData <- rbind(trainData, testData)

# Collapse data into one table 
collapsedData <- data.table(subject = mergedSubject$V1, activityID = mergedActivity$V1, mergedData)

# Select only columns with "mean" and "std"
selColumns <- grep("mean|std|subject|activity", as.list(names(collapsedData)), value = TRUE)
croppedData <- collapsedData[, selColumns, with = FALSE]

# Use descriptive activities
enhancedData <- merge(activities, croppedData, by = "activityID")[, activityID := NULL]

# Create summary dataset
sumData <- enhancedData %>% group_by(activity, subject) %>% summarise_each(funs(mean))

# Output summary dataset
write.table(sumData, "sumData.txt", row.names = FALSE)

# Remove unused objects from the environment
rm(list = ls()[!grepl("enhanced|sum", ls())])
