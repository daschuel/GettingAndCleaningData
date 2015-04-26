# Read-Me File for Cleaned UCI HAR Dataset
# Final Project for Getting and Cleaning Data
# David Schueler
# 4/26/2015

This repo contains a cleaned and pruned version of the Human Activity Recognition Using Smartphones Dataset, citation below.

The file means_by_subject_and_activity.txt contains the mean of each subject, activity, and variable combination; see CodeBook.md for details.

The file can be read using read.table() in R with header set to TRUE.

The script run_analysis.R produces this file from the initial data downloaded from the below link. The archive must be unzipped, and the R script must be placed in the top subdirectory of the folder resulting from the unzip. That is, the path should be:

UCI HAR Dataset/run_analysis.R

The link is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The file Codebook.md explains the variables and features used in this data set.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
