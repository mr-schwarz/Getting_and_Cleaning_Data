# Code Book

This code book describe the data used for the R script run_analysis.R.

## Data Source
Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on
the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a
constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed
to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features
was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Explanation of the used files
- 'features.txt': Names of the 561 features.
- 'activity_labels.txt': Names and IDs for each of the 6 activities.
- X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
- y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.
- subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
- X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.
- y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.
- subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.

## Explanation of the final calculated columns
All variables are the mean of a measurement for each subject and activity.

- SubId
- ActivityType
- ActivityId
- TimeBodyAccelerationMeanX
- TimeBodyAccelerationMeanY
- TimeBodyAccelerationMeanZ
- TimeBodyAccelerationStdX
- TimeBodyAccelerationStdY
- TimeBodyAccelerationStdZ
- TimeGravityAccelerationMeanX
- TimeGravityAccelerationMeanY
- TimeGravityAccelerationMeanZ
- TimeGravityAccelerationStdX
- TimeGravityAccelerationStdY
- TimeGravityAccelerationStdZ
- TimeBodyAccelerationJerkMeanX
- TimeBodyAccelerationJerkMeanY
- TimeBodyAccelerationJerkMeanZ
- TimeBodyAccelerationJerkStdX
- TimeBodyAccelerationJerkStdY
- TimeBodyAccelerationJerkStdZ
- TimeBodyGyroMeanX
- TimeBodyGyroMeanY
- TimeBodyGyroMeanZ
- TimeBodyGyroStdX
- TimeBodyGyroStdY
- TimeBodyGyroStdZ
- TimeBodyGyroJerkMeanX
- TimeBodyGyroJerkMeanY
- TimeBodyGyroJerkMeanZ
- TimeBodyGyroJerkStdX
- TimeBodyGyroJerkStdY
- TimeBodyGyroJerkStdZ
- TimeBodyAccelerationMagnitudeMean
- TimeBodyAccelerationMagnitudeStd
- TimeGravityAccelerationMagnitudeMean
- TimeGravityAccelerationMagnitudeStd
- TimeBodyAccelerationJerkMagnitudeMean
- TimeBodyAccelerationJerkMagnitudeStd
- TimeBodyGyroMagnitudeMean
- TimeBodyGyroMagnitudeStd
- TimeBodyGyroJerkMagnitudeMean
- TimeBodyGyroJerkMagnitudeStd
- FrequencyuencyBodyAccelerationMeanX
- FrequencyuencyBodyAccelerationMeanY
- FrequencyuencyBodyAccelerationMeanZ
- FrequencyuencyBodyAccelerationStdX
- FrequencyuencyBodyAccelerationStdY
- FrequencyuencyBodyAccelerationStdZ
- FrequencyuencyBodyAccelerationMeanFrequencyX
- FrequencyuencyBodyAccelerationMeanFrequencyY
- FrequencyuencyBodyAccelerationMeanFrequencyZ
- FrequencyuencyBodyAccelerationJerkMeanX
- FrequencyuencyBodyAccelerationJerkMeanY
- FrequencyuencyBodyAccelerationJerkMeanZ
- FrequencyuencyBodyAccelerationJerkStdX
- FrequencyuencyBodyAccelerationJerkStdY
- FrequencyuencyBodyAccelerationJerkStdZ
- FrequencyuencyBodyAccelerationJerkMeanFrequencyX
- FrequencyuencyBodyAccelerationJerkMeanFrequencyY
- FrequencyuencyBodyAccelerationJerkMeanFrequencyZ
- FrequencyuencyBodyGyroMeanX
- FrequencyuencyBodyGyroMeanY
- FrequencyuencyBodyGyroMeanZ
- FrequencyuencyBodyGyroStdX
- FrequencyuencyBodyGyroStdY
- FrequencyuencyBodyGyroStdZ
- FrequencyuencyBodyGyroMeanFrequencyX
- FrequencyuencyBodyGyroMeanFrequencyY
- FrequencyuencyBodyGyroMeanFrequencyZ
- FrequencyuencyBodyAccelerationMagnitudeMean
- FrequencyuencyBodyAccelerationMagnitudeStd
- FrequencyuencyBodyAccelerationMagnitudeMeanFrequency
- FrequencyuencyBodyBodyAccelerationJerkMagnitudeMean
- FrequencyuencyBodyBodyAccelerationJerkMagnitudeStd
- FrequencyuencyBodyBodyAccelerationJerkMagnitudeMeanFrequency
- FrequencyuencyBodyBodyGyroMagnitudeMean
- FrequencyuencyBodyBodyGyroMagnitudeStd
- FrequencyuencyBodyBodyGyroMagnitudeMeanFrequency
- FrequencyuencyBodyBodyGyroJerkMagnitudeMean
- FrequencyuencyBodyBodyGyroJerkMagnitudeStd
- FrequencyuencyBodyBodyGyroJerkMagnitudeMeanFrequency
