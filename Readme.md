# Readme.md
The independent tidy data set [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt) can be read into R using the command:
## Overview
The variables and description can be found in
[codebook.md](https://github.com/balapad/GCDProject/blob/master/codebook.md).

The [q5Data.txt](https://github.com/balapad/GCDProject/blob/master/q5Data.txt)
has been obtained by processing the data provided in the
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Description of run_analysis.R
1. Download the UCI Har Dataset directory and extract the datafiles.
2. Read the features data file
3. Read the test data files
  + Read the measurement data X_test.txt
  + Read the test subject codes subject_test.txt
  + REad the test activiry codes y_test.txt
4. Read the training data file
  + Read the measurement data X_train.txt
  + Read the test subject codes subject_train.txt
  + REad the test activiry codes y_train.txt
5. Merge the measurement, subject and activity code data into one table
  + The subject and activity data are the first and second columns of the merge data table
  + name the first two columns as subjects and activity
6. Subset the merge data to columns that contain the mean and standard deviation values
7. Map activity columns to the respective activities (walking, walkingupstairs,walkingdownstairs,sitting, standing, lying)
8. Relabel the columns to representative strings
9. Calculate the mean of the data using activity and subject
10. Write the data into the file q5Data.txt



