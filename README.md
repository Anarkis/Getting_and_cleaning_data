#README

## How it works
1. Create some variables, get test and train dirs and call to merge_all
2. Merge_all call to:
.. 1. get_data
.. 2. get_activity
.. 3. subject_test
… Merge put all data together related to test
… All the same last 3 steps for train
"\t" **Merge all data**
3. Create the tidy data


### Get_data function
#### As parameter, its will receive the test and train dirs
This function is in charge of:
1. Read the data from the files (X_test.txt or X_train.txt depends on the parameter.
2. Transform the lines in rows and columns
3. Naming the columns with numbers 
4. Select the columns that we are interested in (it does through selected_col)
.. ** See the rest**

### Get_subject
#### As parameter, its will receive the test and train dirs
This function will select the subjects, reading the file subject_test.txt or subject_train.txt depending on the parameter


### Get_activity
#### As parameter, its will receive the test and train dirs
This function will select the activity label, reading the file y_test.txt or y_train.txt depending on the parameter
1. Read the activity_id
2. Match selected activity_id with the vector activity_labels.
.. * activity_labels works as key,value where the Key = Id, Value = Activity_label. We have the id, and we want get the label

### Merge_all
This function is in charge of:
1. Call to get the data
2. Call to get the activity
3. Call to get the subject
4. Join all data from the same source (train and later test)
5. Merge all data, train and test, all together
**As result, we have the data from test, train, subject and activity**

### The rest code
Here we can find the “main” code, which prepare some variables and calls to merge_all.
1. Read the features and activity labels
2. Select the labels with mean and std
3. Get the test and train dirs
4. Call to merge_all
5. set colnames
6. **Create the tidy_data** with the result of merge all