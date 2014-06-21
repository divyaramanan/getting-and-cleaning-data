##Code Book for run_analysis.r


### Original Data Source

 This data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Project Data Source

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### What does run_analysis.r do?

  * Read all the datasets - Training and Testing of X,Y and subject, activity_ labels and features.
  * Merges Training and Testing datasets.
  * Assign meaningful names to the activity measurements.
  * Only the variables listing the Mean and Standard Deviation are extracted.
  * Merges the X,Y and subject datasets
  * Writes the tidy data to "clean.csv" file.
  * Calculates the average of each variable for each subject and each activity.
  * Writes the average data to "average.csv" file. 

### Subject

     Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

### Activity

      Indicates the type of activity. There are 6 types of activity

       * LAYING 
       * SITTING
       * STANDING
       * WALKING
       * WALKING_DOWNSTAIRS
       * WALKING_UPSTAIRS

### Features

      The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

       These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

 ### 	Variables  considered for experimentation

    * Mean
    * Standard Deviation

  
 
 



