#1)Merges the training and the test sets to create one data set. ok
#2)Extracts only the measurements on the mean and standard deviation for each measurement. ok
#3)Uses descriptive activity names to name the activities in the data set. ok
#4)Appropriately labels the data set with descriptive variable names. ok
#5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity 
#and each subject.

#read activity labels and features
directory <- setwd("C:/AnaliseDados/coursera/dataClean/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
features <- read.table("features.txt")
activity <- read.table("activity_labels.txt")
names(activity) <- c("ID_Activity","Activity")

#read train files
directory <- setwd("C:/AnaliseDados/coursera/dataClean/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train")
train_x <- read.table("X_train.txt",  header = FALSE, sep = "")
train_y <- read.table("Y_train.txt",  header = FALSE, sep = "")
subject_train <- read.table("subject_train.txt")
names(subject_train) <- "Subject"

#read test files
directory <- setwd("C:/AnaliseDados/coursera/dataClean/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test")
test_x <- read.table("X_test.txt",  sep = "")
test_y <- read.table("Y_test.txt",  sep = "")
subject_test <- read.table("subject_test.txt")
names(subject_test) <- "Subject"


#merge train activity
names(train_y) <- "ID_Activity"
train_y <- merge(train_y, activity, by = "ID_Activity")
#merge test activity
names(test_y) <- "ID_Activity"
test_y <- merge(test_y, activity, by = "ID_Activity")

#include names
names(train_x) <- features[,2]
names(test_x) <-  features[,2]

#select only measures with mean and std
measurements <- grepl("mean|std", features[,2])
train_x = train_x[,measurements]
test_x = test_x[,measurements]

#join subject with data
train <- cbind(subject_train, train_y ,train_x)
test  <- cbind(subject_test, test_y, test_x)

#join train and test data
final_data <-  rbind(train, test)

require(reshape2)
id_vars <- c("Subject", "ID_Activity", "Activity")
columns <- setdiff(colnames(final_data) , id_vars)
aux <- melt(final_data, id_vars, measure.vars = columns)
#aggregate(cbind(year, income)~group, data=df, FUN=mean)
tidy_data   = dcast (aux, Subject + Activity ~ variable, mean)

setwd("C:/AnaliseDados/coursera/dataClean/")
write.table(tidy_data, file = "./tidy_data.txt", row.name = FALSE)

str(tidy_data)
