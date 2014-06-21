#CodeBook

This file is based off the source data code book available in `UCI HAR Dataset/features_info.txt`. For complete details, please see that file.

* The first field is a sequential identifier with no significance
* `Activity` is a string identifying which activity was being preformed for these measurements. There are six options:
	* WALKING 
	* WALKING_UPSTAIRS 
	* WALKING_DOWNSTAIRS 
	* SITTING 
	* STANDING 
	* LAYING
* The remainder of the fields are named in a systematic fashion
	* Those starting with a `t` are time domain and `f` indicates frequency domain
	* `Body` indicates the non-gravity component of the acceleration. `Gravity` is the gravity component.
	* `Acc` is the base acceleration signal which was decomposed into `GyroJerk` and `AccJerk`. 
	* The -Z, -X, or -Z suffix indicates the axis along which the signal was measuresd.
	* `Mag` indicates the absolute magntiude a of a three-dimensional signal.
	* `std()` indicates the standard deviation of that signal, `mean()` is the arithmatic mean
* The data present is the mean of the source data for a given participant and activity. The original data is dimensionless and scaled to [-1,1] and thus the mean has no units.

##Fields
"","activity","subjectId","tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tBodyAcc-std()-X","tBodyAcc-std()-Y","tBodyAcc-std()-Z","tGravityAcc-mean()-X","tGravityAcc-mean()-Y","tGravityAcc-mean()-Z","tGravityAcc-std()-X","tGravityAcc-std()-Y","tGravityAcc-std()-Z","tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z","tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z","tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z","tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z","tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-mean()","tBodyAccMag-std()","tGravityAccMag-mean()","tGravityAccMag-std()","tBodyAccJerkMag-mean()","tBodyAccJerkMag-std()","tBodyGyroMag-mean()","tBodyGyroMag-std()","tBodyGyroJerkMag-mean()","tBodyGyroJerkMag-std()","fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAcc-std()-X","fBodyAcc-std()-Y","fBodyAcc-std()-Z","fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z","fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyGyro-mean()-X","fBodyGyro-mean()-Y","fBodyGyro-mean()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z","fBodyAccMag-mean()","fBodyAccMag-std()","fBodyBodyAccJerkMag-mean()","fBodyBodyAccJerkMag-std()","fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()","fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()"