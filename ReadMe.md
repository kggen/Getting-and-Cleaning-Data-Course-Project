## Getting and Cleaning Data Course Project

The current repository represents the Course Project assignment to the Getting and Cleaning Data Course from the Coursera Data Science Specialisation.

### The assignment
Description of the assignment from Coursera:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Files in the repository
The following files are part of this repository:
* __ReadMe.md__
* __CodeBook.md__
* __run_analysis.R__


The __run_analysis.R__ script represents all operations related to the original datasets as performed during the assignment tasks.

The __CodeBook.md__ file describes the data in the data set: original data sources, operations performed in order to make the variable names more descriptive, descriptions of the coding abbreviations.

### How the code works
Once the code is run, it downloads and extracts the data for the project in the working directory and perform the five assignment tasks. 

The script is divided into 5 main points, which show the code for the five assignment tasks as described above. Detailed explanations for each step are provided as comments to the code. Each operation is duly described and justified. 

The output of the script is a tidy data set called "output_dataset" with the average of each variable for each activity and each subject.



### Tidy data
During the assingment, special attention was paid in order to keep all data tidy according to the definitions given by the Hadley Wickham's article on Tidy Data, which can be found on the following link: <http://vita.had.co.nz/papers/tidy-data.pdf> 

By doing so, the to main characteristics of tidy data apply to the datasets created by the R script, namely:
1. Each variable forms a column.
2. Each observation forms a row.

The third aspect of tidy data "Each type of observational unit forms a table" is not mentioned above, since it does not apply to the current assignment.

### Versions
All tasks were performed using __R version 3.4.2__ and __RStudio Version 1.1.383__.


---
title: "ReadMe.md"
author: "Kiril Genov"
date: "March 15, 2018"
output: html_document
---


