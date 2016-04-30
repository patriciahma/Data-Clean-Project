
#Data Clean Project

##Goal: Prepare Tidy Data

Data used in the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Files
run_analysis – code used for transform the data 
codebook – file describing variables and data 
readme – this file

##Tasks:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Run_analysis
The following steps describe all tasks

1. Read train and test files. 
2. Read Subject files.
3.Read Activity files
4.Exclude all measurements different from mean and standard deviation Rename column names 
5.Join all data sets: train, test, subject and activities 
6.Create a melt data set using as ids the subject and activities and as variables the difference between ids and the rest of the dataset Find a mean per subject and activity Save the data in a textfile.
