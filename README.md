# Readme

## Overview of the script

The raw data comes from the UCI machine learing repository and comprises data from human activity measurements tracked by smartphone (Samsung Galaxy S II).
Information on the dataset is avaiable under http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
The script run_analysis.R creates two tidy data sets. 

The first contains the mean and standard deviation for each measurement. The output file is called tidy_data.txt.
The second tidy data set contains the average of each variable for each activity and each subject. The output file is called tidy_data_averages.txt.

## Explanation of the script

* The first step of the script is to merge training and test datasets into one. The x, y and subject datasets are loaded into the workspace and merged together with rbind.

* Since only mean and standard deviation should be included into the tidy data set the according indices are taken from the features.txt. The indices are identified by the grep function and then the x.merged dataset is reduced to data according to these indices. 
This results in a data frame with the dimension 10299x66, so in my case the chosen grep pattern returns 66 mean or standard deviation variables. 

Then the names of the variables are assigned to the datafield and changed according to the variable name conventions in video 1 week 4 "Editing text variables". So the names are changed to lower case only and useless brackets are deleted.

* In the third step the activity names are taken from the activity_labels.txt and also changed according to the course conventions. They are then assigend to the y.merged dataframe.

* In the fourth step all 3 treated datafields are merged into one and this is saved as file "tidy_data.txt". The resulting tidy data has got the dimension 10299x68. So there are 68 variables and 10299 records.

* The fifth and last step creates a second tidy data set with the average of each variable for each activity and each subject. Two nested for-loops are used to compute this row by row.
This second tidy data set with dimension 180x68 is saved as file "tidy_data_averages.txt".




