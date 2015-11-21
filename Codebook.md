#Getting and cleaning data course project codebook

This script run_analysis.R downloads, organizes and summarizes accelometer and gyroscope data from smartphone used by 30 study subject (full description of this data collection: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for further analysis. Only the data on mean values and standard deviations of each measurement are taken forward. The data is summarized by taking the average of the measures of different variables for each activity-subject pair, and this data is written in "averages.text" -file. This table can be viewed in R using script:

>View(read.table("averages.txt", header = TRUE))

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions). These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The set of variables that were estimated from these signals were the mean and standard deviation.  

The variables of the tabe "averages.txt" are (X/Y/Z is used to denote 3-axial signals in the X, Y and Z directions):

activity                = the activity group               
subject                 = number of the subject               
tBodyAcc.mean...X/Y/Z   = the mean acceleration signal of body (time)
tBodyAcc.std...X/Y/Z    = the standard deviation of acceleration signal of body (time)
tGravityAcc.mean...X/Y/Z = the mean acceleration signal of gravity (time)
tGravityAcc.std...X/Y/Z  = the standard deviation of acceleration signal of gravity (time).
tBodyAccJerk.mean...X/Y/Z = the mean acceleration Jerk signals of body (time)
tBodyAccJerk.std...X/Y/Z  =  the standard deviation of acceleration Jerk signals of body (time)       
tBodyGyro.mean...X/Y/Z  = the mean gyroscope signal of body (time)
tBodyGyro.std...X/Y/Z   = the standard deviation of gyroscope signal of body (time).
tBodyGyroJerk.mean...X/Y/Z = the mean gyroscope Jerk signals of body (time)
tBodyGyroJerk.std...X/Y/Z = the standard deviation of gyroscope Jerk signals of body (time)  
tBodyAccMag.mean        = the mean of magnitude of body acceleration (time) 
tBodyAccMag.std         = the standard deviation of magnitude of body acceleration (time)
tGravityAccMag.mean     = the mean of the magnitude of gravity acceleration (time)
tGravityAccMag.std      = the standard deviation of the magnitude of gravity acceleration (time)    
tBodyAccJerkMag.mean    = the mean of magnitude of body acceleration jerk signals (time)
tBodyAccJerkMag.std     = the standard deviation of magnitude of body acceleration jerk signals (time)
tBodyGyroMag.mean       = the mean of magnitude of body gyroscope signals (time)
tBodyGyroMag.std        = the standard deviation of magnitude of body gyroscope signals (time)
tBodyGyroJerkMag.mean   = the mean of magnitude of body gyroscope Jerk signals (time)
tBodyGyroJerkMag.std    = the standard deviation of magnitude of body gyroscope Jerk signals (time) 
fBodyAcc.mean...X/Y/Z = the mean acceleration signal of body (fast fourrier transform)
fBodyAcc.std...X/Y/Z = the standard deviation of acceleration signal of body (time) 
fBodyAccJerk.mean...X/Y/Z = the mean acceleration Jerk signals of body (time)
fBodyAccJerk.std...X/Y/Z = the standard deviation of acceleration Jerk signals of body (time) 
fBodyGyro.mean...X/Y/Z = the mean gyroscope signal of body (time) 
fBodyGyro.std...X/Y/Z =  the standard deviation of gyroscope signal of body (time)   
fBodyAccMag.mean = the mean of magnitude of body acceleration (time) 
fBodyAccMag.std = the standard deviation of magnitude of body acceleration (time)
fBodyAccJerkMag.mean = the mean of magnitude of body acceleration jerk signals (time)
fBodyAccJerkMag.std = the standard deviation of magnitude of body acceleration jerk signals (time)
fBodyGyroMag.mean = the mean of magnitude of body gyroscope signals (time)
fBodyGyroMag.std = the standard deviation of magnitude of body gyroscope signals (time)
fBodyGyroJerkMag.mean = the mean of magnitude of body gyroscope Jerk signals (time)
fBodyGyroJerkMag.std = the standard deviation of magnitude of body gyroscope Jerk signals (time)

