#Original data
All the data and the description is available in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Transformations
1. Read test and subsetting the data related to mean and std

2. Read test activity labels

3. Read test subject

4. Merge column subject_test, activity_test and data_test

5. Read train and subsetting the data related to mean and std

6. Read train activity labels

7. Read train subject

8. Merge column subject_train, activity_train and data_train

9. Merge all data train and test

10. Reshape data to calculate the mean of each variable associated to each subject

11. Get tidy data

##Variables
####Subject
The subject ID who performed the activity

####Activity
Activity name performed by subjects
values: WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING

####tBodyAcc-mean()-X
####tBodyAcc-mean()-Y
####tBodyAcc-mean()-Z
Means of 3-axial body acceleration (time domain for t)

####tBodyAcc-std()-X
####tBodyAcc-std()-Y
####tBodyAcc-std()-Z
Standard deviations of 3-axial body acceleration (time domain for t)

####tGravityAcc-mean()-X
####tGravityAcc-mean()-Y
####tGravityAcc-mean()-Z
Means of 3-axial Gravity acceleration (time domain for t)

####tGravityAcc-std()-X
####tGravityAcc-std()-Y
####tGravityAcc-std()-Z
Standard deviations of 3-axial Gravity acceleration (time domain for t)

####tBodyAccJerk-mean()-X
####tBodyAccJerk-mean()-Y
####tBodyAccJerk-mean()-Z
Means of 3-axial body acceleration jerk signal (time domain for t)

####tBodyAccJerk-std()-X
####tBodyAccJerk-std()-Y
####tBodyAccJerk-std()-Z
Standard deviations of 3-axial body acceleration jerk signal (time domain for t)

####tBodyGyro-mean()-X
####tBodyGyro-mean()-Y
####tBodyGyro-mean()-Z
Means of 3-axial body acceleration gyro signal(time domain for t)

####tBodyGyro-std()-X
####tBodyGyro-std()-Y
####tBodyGyro-std()-Z
Standard deviations of 3-axial body acceleration gyro signal(time domain for t)

####tBodyGyroJerk-mean()-X
####tBodyGyroJerk-mean()-Y
####tBodyGyroJerk-mean()-Z
Means of 3-axial body acceleration gyro jerk signal(time domain for t)

####tBodyGyroJerk-std()-X
####tBodyGyroJerk-std()-Y
####tBodyGyroJerk-std()-Z
Standard deviations of 3-axial body acceleration gyro jerk signal(time domain for t)

####tBodyAccMag-mean()
Mean of body acceleration magnitude signal(time domain for t)

####tBodyAccMag-std()
Standard deviations of body acceleration magnitude signal(time domain for t)

####tGravityAccMag-mean()
Mean of gravity acceleration magnitude signal(time domain for t)

####tGravityAccMag-std()
Standard deviations of gravity acceleration magnitude signal(time domain for t)

####tBodyAccJerkMag-mean()
Mean of body acceleration jerk magnitude signal(time domain for t)

####tBodyAccJerkMag-std()
Standard deviations of body acceleration jerk magnitude signal(time domain for t)

####tBodyGyroMag-mean()
Mean body gyro magnitude signal(time domain for t)

####tBodyGyroMag-std()
Standard deviation body gyro signal(time domain for t)

####tBodyGyroJerkMag-mean()
Mean of body gyroscope jerk magnitude signal (time domain for t)

####tBodyGyroJerkMag-std()
Standard deviation of body gyroscope jerk magnitude signal (time domain for t)

####fBodyAcc-mean()-X
####fBodyAcc-mean()-Y
####fBodyAcc-mean()-Z
Means of 3-axial body acceleration (frequency domain for f)

####fBodyAcc-std()-X
####fBodyAcc-std()-Y
####fBodyAcc-std()-Z
Standard deviations of 3-axial body acceleration (frequency domain for f)

####fBodyAcc-meanFreq()-X
####fBodyAcc-meanFreq()-Y
####fBodyAcc-meanFreq()-Z
Mean frequency of 3-axial body acceleration (frequency domain for f)

####fBodyAccJerk-mean()-X
####fBodyAccJerk-mean()-Y
####fBodyAccJerk-mean()-Z
Means of 3-axial body acceleration jerk signal (frequency domain for f)

####fBodyAccJerk-std()-X
####fBodyAccJerk-std()-Y
####fBodyAccJerk-std()-Z
Standard deviations of 3-axial body acceleration jerk signal (frequency domain for f)

####fBodyAccJerk-meanFreq()-X
####fBodyAccJerk-meanFreq()-Y
####fBodyAccJerk-meanFreq()-Z
Mean frequency of 3-axial body acceleration jerk signal(frequency domain for f)

####fBodyGyro-mean()-X
####fBodyGyro-mean()-Y
####fBodyGyro-mean()-Z
Means of 3-axial body gyro signal(frequency domain for f)

####fBodyGyro-std()-X
####fBodyGyro-std()-Y
####fBodyGyro-std()-Z
Standard deviations of 3-axial body gyro signal(frequency domain for f)

####fBodyGyro-meanFreq()-X
####fBodyGyro-meanFreq()-Y
####fBodyGyro-meanFreq()-Z
Means frequency of 3-axial body acceleration gyro signal(frequency domain for f)

####fBodyAccMag-mean()
Mean of body acceleration magnitude signal(frequency domain for f)

####fBodyAccMag-std()
Standard deviation of body acceleration magnitude signal(frequency domain for f)

####fBodyAccMag-meanFreq()
Mean frequency of body acceleration magnitude signal(frequency domain for f)

####fBodyBodyAccJerkMag-mean()
Mean of body acceleration jerk magnitude signal(frequency domain for f)

####fBodyBodyAccJerkMag-std()
Standard deviation of body acceleration jerk magnitude signal(frequency domain for f)

####fBodyBodyAccJerkMag-meanFreq()
Mean frequency of body acceleration jerk magnitude signal(frequency domain for f)

####fBodyBodyGyroMag-mean()
Mean of body gyro signal magnitude signal(frequency domain for f)

####fBodyBodyGyroMag-std()
Standard deviation of body gyro signal magnitude signal(frequency domain for f)

####fBodyBodyGyroMag-meanFreq()
Mean frequency of body gyro signal magnitude signal(frequency domain for f)

####fBodyBodyGyroJerkMag-mean()
Mean of body gyro jerk magnitude signal(frequency domain for f)

####fBodyBodyGyroJerkMag-std()
Standard deviation of body gyro jerk magnitude signal(frequency domain for f)

####fBodyBodyGyroJerkMag-meanFreq()
Mean frequency of body gyro jerk magnitude signal(frequency domain for f)

