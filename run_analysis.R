library(dplyr)

#check if the dataset exists and if not download and unzip the data:

if (!file.exists("UCI HAR Dataset")){
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url, destfile = "./data.zip", method = "curl")

#unzip files
unzip("data.zip")

}       

#read files to R

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

#label the data

x_labels <- make.names(as.character(features[[2]]), unique=TRUE)
names(X_test) <-  x_labels
names(X_train) <-  x_labels

names(y_test) <- "activity_num"
names(y_train) <- "activity_num"

names(subject_test) <- "subject"
names(subject_train) <- "subject"

#combine data and add column with activity labels

test_set <- cbind(subject_test, y_test, X_test)
train_set <- cbind(subject_train, y_train, X_train)

full_data <- rbind(test_set, train_set)

full_data <- mutate(full_data, activity=factor(activity_num, labels=c("WALKING", "WALKING_upstairs",
                                                "WALKING_downstairs", "SITTING",
                                                "STANDING","LAYING")))

#extract mean and standard deviation

data_mean_SD <- select(full_data, subject:activity_num, activity, 
                       tBodyAcc.mean...X:tBodyAcc.std...Z,
                       tGravityAcc.mean...X:tGravityAcc.std...Z,
                       tBodyAccJerk.mean...X:tBodyAccJerk.std...Z,
                       tBodyGyro.mean...X:tBodyGyro.std...Z,
                       tBodyGyroJerk.mean...X:tBodyGyroJerk.std...Z,
                       tBodyAccMag.mean..:tBodyAccMag.std..,
                       tGravityAccMag.mean..:tGravityAccMag.std..,
                       tBodyAccJerkMag.mean..:tBodyAccJerkMag.std..,
                       tBodyGyroMag.mean..:tBodyGyroMag.std..,
                       tBodyGyroJerkMag.mean..:tBodyGyroJerkMag.std..,
                       fBodyAcc.mean...X:fBodyAcc.std...Z,
                       fBodyAccJerk.mean...X:fBodyAccJerk.std...Z,
                       fBodyGyro.mean...X:fBodyGyro.std...Z,
                       fBodyAccMag.mean..:fBodyAccMag.std..,
                       fBodyBodyAccJerkMag.mean..: fBodyBodyAccJerkMag.std..,
                       fBodyBodyGyroMag.mean..:fBodyBodyGyroMag.std..,
                       fBodyBodyGyroJerkMag.mean..:fBodyBodyGyroJerkMag.std..)

#rename variables to remove extra dots and "Body"s

data_mean_SD <- rename(data_mean_SD, tBodyAccMag.mean=tBodyAccMag.mean..,
                       tBodyAccMag.std=tBodyAccMag.std.., 
                       tGravityAccMag.mean=tGravityAccMag.mean..,
                       tGravityAccMag.std=tGravityAccMag.std..,
                       tBodyAccJerkMag.mean=tBodyAccJerkMag.mean..,
                       tBodyAccJerkMag.std=tBodyAccJerkMag.std..,
                       tBodyGyroMag.mean=tBodyGyroMag.mean.., 
                       tBodyGyroMag.std=tBodyGyroMag.std..,
                       tBodyGyroJerkMag.mean=tBodyGyroJerkMag.mean.., 
                       tBodyGyroJerkMag.std=tBodyGyroJerkMag.std..,
                       fBodyAccMag.mean=fBodyAccMag.mean.., 
                       fBodyAccMag.std=fBodyAccMag.std..,
                       fBodyAccJerkMag.mean=fBodyBodyAccJerkMag.mean.., 
                       fBodyAccJerkMag.std=fBodyBodyAccJerkMag.std..,
                       fBodyGyroMag.mean=fBodyBodyGyroMag.mean..,
                       fBodyGyroMag.std=fBodyBodyGyroMag.std..,
                       fBodyGyroJerkMag.mean=fBodyBodyGyroJerkMag.mean..,
                       fBodyGyroJerkMag.std=fBodyBodyGyroJerkMag.std..)

#create summary data

data_summary <- data_mean_SD %>%
                group_by(activity, subject) %>%
                summarize_each(funs(mean), -activity_num)

#create text file

write.table(data_summary, file = "averages.txt", row.names = FALSE)
