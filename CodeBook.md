## How to run
Simply sourcing the script `run_analysis.R` will do the following:

1. Read all relevant files
2. Merge test and training dataset
3. Select only the data that represents the mean or standard deviation of a measurement
4. Use descriptive variables instead of IDs for the activities
5. Summarize the data by person and activity
6. Write the summary to the file "sumData.txt"

## Variables
For each step I created a separate variable to keep track of the changes. Using the same numbers as above:

1. `features`, `activities`, `trainActivity`, `trainSubject`, `trainData`, `testActivity`, `testSubject`, `testData` are used to read the corresponding data files.
2. `mergedData`, `mergedSubject`, `mergedActivity` are the merged data frames. `collapsedData` is the data frame containging all data.
3. `croppedData` contains only the selected columns
4. `enhancedData` uses descriptive activity values instead of IDs
5. `sumData` is the summarized data

## Code explanation
The code makes heavily use of the data.table package and for step 5 also of the dplyr package. This ensures terse code and fast execution.