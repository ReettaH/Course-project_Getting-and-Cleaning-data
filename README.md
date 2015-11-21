# Getting and cleaning data course project

This script run_analysis.R downloads, organizes and summarizes accelometer and gyroscope data from smartphone used by 30 study subject (full description of this data collection: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for further analysis.

The script needs to be imported to the working directory and then is run by 

>source('./run_analysis.R')


In the first step the script verifies if the dataset already exists in the working directory and if not, it will download it and read it to R.

In the second step the data is labeled and the subject and activity data is combined with the measurement data, the training and test set are combined. The activity data is changed from numerical to factors.

In the third step the mean and standard deviation values for different measurements are extracted and some of the variables are renamed for more clarity.

In the fourth step the data on mean and standard deviation is summarized. Mean values for all the variables are taken for each activity-subject pair. This data is writen as a "averages.txt" -table that can be viewed in R using the script:

>View(read.table("averages.txt", header = TRUE))

This table follows the tidy data principles: the columns have headings, only one variable/column and no dublicate columns.
