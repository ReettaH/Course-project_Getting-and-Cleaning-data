#Getting and cleaning data course project codebook

This script run_analysis.R downloads, organizes and summarizes accelometer and gyroscope data from smartphone used by 30 study subject (full description of this data collection: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for further analysis. Only the data on mean values and standard deviations of each measurement are taken forward. The data is summarized by taking the average of the measures of different variables for each activity-subject pair, and this data is written in "averages.text" -file. This table can be viewed in R using script:

>View(read.table("averages.txt", header = TRUE))

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions). These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The set of variables that were estimated from these signals were the mean and standard deviation.  

The variables of the tabe "averages.txt" are (X/Y/Z is used to denote 3-axial signals in the X, Y and Z directions, g = gravity of earth -> 9.80665 m/seg2):

activity                = the activity group               
subject                 = number of the subject               
tBodyAcc.mean...X/Y/Z   = the mean acceleration signal of body (time) (g)
tBodyAcc.std...X/Y/Z    = the standard deviation of acceleration signal of body (time)(g)
tGravityAcc.mean...X/Y/Z = the mean acceleration signal of gravity (time)(g)
tGravityAcc.std...X/Y/Z  = the standard deviation of acceleration signal of gravity (time)(g)
tBodyAccJerk.mean...X/Y/Z = the mean acceleration Jerk signals of body (time)(g)
tBodyAccJerk.std...X/Y/Z  =  the standard deviation of acceleration Jerk signals of body (time)(g)     
tBodyGyro.mean...X/Y/Z  = the mean gyroscope signal of body (time)(rad/seg)
tBodyGyro.std...X/Y/Z   = the standard deviation of gyroscope signal of body (time)(rad/seg)
tBodyGyroJerk.mean...X/Y/Z = the mean gyroscope Jerk signals of body (time)(rad/seg)
tBodyGyroJerk.std...X/Y/Z = the standard deviation of gyroscope Jerk signals of body (time)(rad/seg)  
tBodyAccMag.mean        = the mean of magnitude of body acceleration (time) (g)
tBodyAccMag.std         = the standard deviation of magnitude of body acceleration (time)(g)
tGravityAccMag.mean     = the mean of the magnitude of gravity acceleration (time)(g)
tGravityAccMag.std      = the standard deviation of the magnitude of gravity acceleration (time)(g)  
tBodyAccJerkMag.mean    = the mean of magnitude of body acceleration jerk signals (time)(g)
tBodyAccJerkMag.std     = the standard deviation of magnitude of body acceleration jerk signals (time)(g)
tBodyGyroMag.mean       = the mean of magnitude of body gyroscope signals (time)(rad/seg)
tBodyGyroMag.std        = the standard deviation of magnitude of body gyroscope signals (time)(rad/seg)
tBodyGyroJerkMag.mean   = the mean of magnitude of body gyroscope Jerk signals (time)(rad/seg)
tBodyGyroJerkMag.std    = the standard deviation of magnitude of body gyroscope Jerk signals (time)(rad/seg)
fBodyAcc.mean...X/Y/Z = the mean acceleration signal of body (fast fourrier transform)(g)
fBodyAcc.std...X/Y/Z = the standard deviation of acceleration signal of body (fast fourrier transform)(g)
fBodyAccJerk.mean...X/Y/Z = the mean acceleration Jerk signals of body (fast fourrier transform)(g)
fBodyAccJerk.std...X/Y/Z = the standard deviation of acceleration Jerk signals of body (fast fourrier transform)(g) 
fBodyGyro.mean...X/Y/Z = the mean gyroscope signal of body (time) 
fBodyGyro.std...X/Y/Z =  the standard deviation of gyroscope signal of body (time)   
fBodyAccMag.mean = the mean of magnitude of body acceleration (fast fourrier transform)(g) 
fBodyAccMag.std = the standard deviation of magnitude of body acceleration (fast fourrier transform)(g)
fBodyAccJerkMag.mean = the mean of magnitude of body acceleration jerk signals (fast fourrier transform)(g)
fBodyAccJerkMag.std = the standard deviation of magnitude of body acceleration jerk signals (fast fourrier transform)(g)
fBodyGyroMag.mean = the mean of magnitude of body gyroscope signals (fast fourrier transform)(rad/seg)
fBodyGyroMag.std = the standard deviation of magnitude of body gyroscope signals (fast fourrier transform)(rad/seg)
fBodyGyroJerkMag.mean = the mean of magnitude of body gyroscope Jerk signals (fast fourrier transform)(rad/seg)
fBodyGyroJerkMag.std = the standard deviation of magnitude of body gyroscope Jerk signals (fast fourrier transform)(rad/seg)

