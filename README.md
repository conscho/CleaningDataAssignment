# Processing of Smartphone Human Activity Sensor Data
This R script reads, cleans, merges and summarizes the raw sensor data from [1]. 
The data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Prerequisite
The path to the data is currently hard coded. The data file has to be unzipped into R's working diretory, so that the folder "UCI HAR Dataset" is a folder in R's current working directory.

## Files
`CodeBook.md` describes the sensor data.

`run_analysis.R` is the R script that performs these actions.

## How to run
Simply sourcing the script `run_analysis.R` will do the following:

1. Read all relevant files
2. Merge test and training dataset
3. Select only the data that represents the mean or standard deviation of a measurement
4. Use descriptive variables instead of IDs for the activities
5. Summarize the data by person and activity
6. Write the summary to the file "sumData.txt"

## Notes
This script is part of the fulfillment for the course "Getting and Cleaning Data" at Coursera.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
