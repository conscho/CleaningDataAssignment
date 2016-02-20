# Processing of Smartphone Human Activity Sensor Data
This R script reads, cleans, merges and summarizes the raw sensor data from [1]. 
The data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Prerequisite
The path to the data is currently hard coded. The data file has to be unzipped into R's working diretory, so that the folder "UCI HAR Dataset" is a folder in R's current working directory.

## Files
`CodeBook.md` describes how the sensor data is read, merged and summarized.

`run_analysis.R` is the R script that performs these actions.

## Notes
This script is part of the fulfillment for the course "Getting and Cleaning Data" at Coursera.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
