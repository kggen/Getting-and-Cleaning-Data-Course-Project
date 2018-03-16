# Getting and Cleaning Data
# Course Project

# Author: Kiril Genov
# Date: March 15, 2018

# The current script represents all operations related to the original datasets. The script is divided into 5 main points, which show the code for the five assignment tasks as described above.Detailed explanations for each step are provided as comments to the code. 
# For more information please see ReadMe.md and Codebook.md

# Downloading and unzipping the data into working directory:

download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./Dataset.zip")
unzip("./Dataset.zip", exdir = ".")

# Moving on to the five assignment tasks

# 1.	Merges the training and the test sets to create one data set.

#read in the data from the Train folder into R by using the read.table function

X_train<-read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

#the same operation is performed for the test folder

X_test<-read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

#now that all the data is in our environment, we check the dimensions of the data frames in order to be sure that they match together 

dim(X_train)
dim(y_train)
dim(subject_train)

#it is obvious that all three data frames contain 7352 observations and different amount of variables. A proper merge of this data would be by using the cbind function:

train_data<-cbind(subject_train, y_train, X_train)

#similarly we check the dimensions of the Test data and merge it using the cbind function 

dim(X_test)
dim(y_test)
dim(subject_test)
test_data<-cbind(subject_test, y_test, X_test)

#now we should have two data frames containing all the information from the train and the test folders. We already know that they have the same amount of columns (variables), so we are ready to merge them together into a single data set, which we'll name "all_data", this time using the rbind function

all_data<-rbind(train_data, test_data)

# Note: If we want to take a look: the dataset can be observed running the View function: View(all_data). It is not run explicitly in the current code in order to save memory.


# 2.	Extracts only the measurements on the mean and standard deviation for each measurement.

# In order to complete this task, we have to add column names to the merged data set (all_data)

# We already know from the original README file that the column names of the datasets are included in the features.txt file. We read them in using the read.table function:

column_names<-read.table("./UCI HAR Dataset/features.txt", header = FALSE)

# As we have introduced two new columns in step No 1 we should add them to the column_names data frame

# Using the dim and head functions we can quickly observe the column_names data frame

dim(column_names)
head(column_names)

# It is clear that we have to create a new dataframe with two columns, with the two new names in order to have column names for all the columns in all_data

additional_names<-data.frame(V1=c(1:2), V2=c("Subject", "Activity.Label"))

# Now we can combine the two data frames in order to have the full names list using the rbind function

full_names<-rbind(additional_names, column_names)

# Using the make.unique function we make sure there are no duplicate values. As it can be observed below, the result is a character vector with the column names
full_names_unique<-make.unique(as.character(full_names[,2]), sep = "_")

# We assign the full_names_unique vector as names to the all_data dataset
names(all_data)<-full_names_unique

# In order to extract the measurements of mean and stnadard deviation we will use the select function from the dplyr package to subset the columns, which names contain mean() and std()

library(dplyr)
all_data_mean_std<-select(all_data, contains("mean()"), contains("std()"))

# Note: If we want to take a look: the dataset can be observed running the View function: View(all_data_mean_std). It is not run explicitly in the current code in order to save memory.



# 3.	Uses descriptive activity names to name the activities in the data set

# According to the README file the activities names are set in the activity_labels.txt file. Let's load it in

activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Now let's make a character vector, containing only the names of the activities, since we don't need the first column

act_lab<-as.character(activity_labels[,2])

# The activities numbers are in the second column of all_data

# We'll use a "for" function in order to replace each number with the respective activity label

for (i in 1:length(act_lab)) {
  all_data[,2]<-gsub(i, act_lab[i], all_data[,2])
}

# If we use the unique function we'll see that all of the values in the second column of the dataset are replaced with their descriptive activity names
unique(all_data$`Activity.Label`)

# Note: If we want to take a look: the dataset can be observed running the View function: View(all_data). It is not run explicitly in the current code in order to save memory.


# 4.	Appropriately labels the data set with descriptive variable names.

# In general, the following two operations will be performed:
# All dashes and underdashes ("-" and "_") were replaced by dots (".").
# The symbols "t" and "f" will be extended to "Time." and "Frequency." 
# Thus all column names convert into short description convention with dots (".") between feature properties. 
# The code for this is as follows:

columnName <- colnames(all_data)
#replace all "-" and "_" with "."
columnName <- gsub("-", ".", columnName)
columnName <- gsub("_", ".", columnName)

#Extend "t" and "f" to "Time" and frequency 
columnName <- gsub("^t", "Time.", columnName)
columnName <- gsub("^f", "Frequency.", columnName)

#Please refer to the CodeBook.md for more detailed explanations about the variable names coding conventions.


# 5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# We'll use a chain operation to quickly summarise the data. The output of the function is saved to a new dataframe called "output dataset". The chain of operations subsequently chooses the all_data dataset, groups the variables by subject and activity label and finally summarises all of the other variables by using the summarise_all function, with a "mean" function embedded as an argument to calculate the average values of each of them.  
output_dataset<-all_data %>% group_by(Activity.Label, Subject) %>% summarise_all(mean)

# The new dataset is saved as a .txt file in the working directory using the write.table function. 
write.table(output_dataset, file="./output_dataset.txt", row.names = FALSE)
