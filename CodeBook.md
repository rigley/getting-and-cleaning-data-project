###The data
The data represents an average of standard deviations and means obtained from the Human Activity Recognition Using Smartphones Dataset located here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original dataset describes the experiment as:

"The data represents experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data." 

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details." 

###Transformations
*From the original data set, only the subject number, activity, and measurements related to standard deviation or mean were retained.
*In the original data set, the activity was indicated by a number. We have replaced this with the name of the activity (RUNNING, WALKING, etc.)
*The column names from the original data set were transformed in the following ways:
  *All punctuation marks were removed from the name
  *The column names were adjusted to be in camel case
###Variable descriptions
*subjectNumber - the subject ID represented by an integer in the range 1 - 30
*activityName - name of the activity perfromed

Note: the following variables are normalized to [-1, 1]

* tBodyAccMeanX - normalized average acceleration of the body in the X direction
* tBodyAccMeanY - normalized average acceleration of the body in the Y direction 
* tBodyAccMeanZ - normalized average acceleration of the body in the Z direction 
* tGravityAccMeanX - normalized average acceleration of the gravity in the X direction
* tGravityAccMeanY - normlized average acceleration of the gravity in the Y direction
* tGravityAccMeanZ - normalized average acceleration of the gravity in the Z direction
* tBodyAccJerkMeanX - normalized average acceleration of jerk in the X direction
* tBodyAccJerkMeanY - normalized average acceleration of jerk in the Y direction
* tBodyAccJerkMeanZ - normalized average acceleration of jerk in the Z direction
* tBodyGyroMeanX - normalized average angular velocity of body in X direction as measured by gyroscope
* tBodyGyroMeanY - normalized average angular velocity of body in Y direction as measured by gyroscope
* tBodyGyroMeanZ - normalized average angular velocity of body in Z direction as measured by gyroscope
* tBodyGyroJerkMeanX - normalized average angular velocity of jerk in X direction as measured by gyroscope
* tBodyGyroJerkMeanY - normalized average angular velocity of jerk in Y direction as measured by gyroscope
* tBodyGyroJerkMeanZ - normalized average angular velocity of jerk in Z direction as measured by gyroscope
* tBodyAccMagMean - average magnitude of body acceleration
* tGravityAccMagMean - average magnitude of gravity acceleration
* tBodyAccJerkMagMean - average magnitude of jerk acceleration
* tBodyGyroMagMean - average angular velocity of body magnitude
* tBodyGyroJerkMagMean - average angular velocity of jerk magnitude
* fBodyAccMeanX - average Fast Fourier Transform (FFT) of tBodyAccMeanX
* fBodyAccMeanY - average Fast Fourier Transform (FFT) of tBodyAccMeanY
* fBodyAccMeanZ - average Fast Fourier Transform (FFT) of tBodyAccMeanZ
* fBodyAccMeanFreqX - average frequency of fBodyAccMeanX
* fBodyAccMeanFreqY - average frequency of fBodyAccMeanY
* fBodyAccMeanFreqZ - average frequency of fBodyAccMeanZ
* fBodyAccJerkMeanX - average Fast Fourier Transform (FFT) of tBodyAccJerkMeanX
* fBodyAccJerkMeanY - average Fast Fourier Transform (FFT) of tBodyAccJerkMeanY
* fBodyAccJerkMeanZ - average Fast Fourier Transform (FFT) of tBodyAccJerkMeanZ
* fBodyAccJerkMeanFreqX - average frequency of fBodyAccJerkMeanX
* fBodyAccJerkMeanFreqY - average frequency of fBodyAccJerkMeanY
* fBodyAccJerkMeanFreqZ - average frequency of fBodyAccJerkMeanZ
* fBodyGyroMeanX - average Fast Fourier Transform (FFT) of tBodyGyroMeanX
* fBodyGyroMeanY - average Fast Fourier Transform (FFT) of tBodyGyroMeanY
* fBodyGyroMeanZ - average Fast Fourier Transform (FFT) of tBodyGyroMeanZ
* fBodyGyroMeanFreqX - average frequency of fBodyGyroMeanX
* fBodyGyroMeanFreqY - average frequency of fBodyGyroMeanY
* fBodyGyroMeanFreqZ - average frequency of fBodyGyroMeanZ
* fBodyAccMagMean - average Fast Fourier Transform (FFT) of tBodyAccMagMean
* fBodyAccMagMeanFreq - average frequency of fBodyAccMagMean
* fBodyBodyAccJerkMagMean - average Fast Fourier Transform (FFT) of tBodyAccJerkMagMean
* fBodyBodyAccJerkMagMeanFreq - average frequency of fBodyAccJerkMagMean
* fBodyBodyGyroMagMean -  average Fast Fourier Transform (FFT) of tBodyBodyGyroMag
* fBodyBodyGyroMagMeanFreq - average frequency of fBodyBodyGyroMagMean
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagMeanFreq
angletBodyAccMeangravity
angletBodyAccJerkMeangravityMean
angletBodyGyroMeangravityMean
angletBodyGyroJerkMeangravityMean
angleXgravityMean
angleYgravityMean
angleZgravityMean
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagStd
tGravityAccMagStd
tBodyAccJerkMagStd
tBodyGyroMagStd
tBodyGyroJerkMagStd
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyAccMagStd
fBodyBodyAccJerkMagStd
fBodyBodyGyroMagStd
fBodyBodyGyroJerkMagStd
