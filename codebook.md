#Code Book

This code book describes de data set informantion, beyond the variables and transformations applied in the Data Clean Project

##Goal: Prepare Tidy Data. 

Data used in the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Files Available in this Repository

* run_analysis – code used for transform the data 
* codebook – file describing variables, transformations and data (this file)
* readme – basic information about the repository and project

## List of Data Used:

* train sets (x_train and y_train). y_train contains the id of activities from x_train
* test sets (x_test and y_test). y_test contains the id of activities from x_test
* features: contains the features
* features_info: all info about features
* activity_labels: the name of each one of the six activities used in the datasets.
* subject_train and subject_test: Number of each one of the subjects in train and test datasets respectively


##Tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Run_analysis
The following steps describe all tasks executed by script run_analysis.r

1. Read train and test files. 
2. Read Subject files.
3. Read Activity files
4. Exclude all measurements different from mean and standard deviation Rename column names 
5. Join all data sets: train, test, subject and activities 
6. Create a melt data set using as ids the subject and activities and as variables the difference between ids and the rest of the dataset Find a mean per subject and activity Save the data in a textfile.



#Some Extra Information About Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


