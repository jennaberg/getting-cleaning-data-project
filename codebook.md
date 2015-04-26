---
title: "codebook"
author: "jenn berg"
date: "April 26, 2015"
output: html_document
---

data from 
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
this codebook describes the variables that occur in the dataframes that are outputs to the R-script run_analysis.R


==================================================================================================================

the above data was modified and the several calculations were  preformed on the data sets provided by the above study to produce 2 tidy data frames (df1 and df2)


df1 and df2 variables 

subject id: (numeric 2-54) the idenitification code for each subject 
trial: (character: test train) variable indicates if observation occurred in test group or in training group
activity type: (factor, levels: walking, walking upstairs, walking downstairs, sitting, standing, laying)

(note: for the variables that follow df2 values are the aritmetic mean for all readings for each subject for each activity type)

(note on coordinates: i'm assuming the y-axis is forward and backward, z is up and down, and x is left to right)

time_mean: (numeric) arithmetic mean of the lengths of interval time for observation 
time_sd: (numeric) standard deviation of the lengths of intervals for each observation

mean_gyroscope_Y: (numeric) arithmetic mean of the measurements of the Y-axis across the time intervals measured 
          (gryoscope reading)
sd_gyroscope_Y: (numeric) standard deviation of the measurements of the Y-axis across the time intervals  
          measured (gyroscope reading)
 mean_gyroscope_Z: (numeric) arithmetic mean of the measurements of the Z-axis across the time intervals 
          measured (gryoscope reading)
sd_gyroscope_Z: (numeric) standard deviation of the measurements of the Z-axis across the time intervals 
          measured (gyroscope reading)           
mean_gyroscope_X: (numeric) arithmetic mean of the measurements of the X-axis across the time intervals measured
          (gryoscope reading)
sd_gyroscope_X: (numeric) standard deviation of the measurements of the X-axis across the time intervals 
          measured (gyroscope reading) 


mean_total_acceleration_Y: (numeric) arithmetic mean of the measurements of the Y-axis across the time intervals 
          measured (total acceleration reading)
sd_total_acceleration_Y: (numeric) standard deviation of the measurements of the Y-axis across the time 
          intervals measured (total accelerationreading)
mean_total_acceleration_Z: (numeric) arithmetic mean of the measurements of the Z-axis across the time interval           
          measured (total acceration reading)
sd_total_acceleration_Z: (numeric) standard deviation of the measurements of the Z-axis across the time 
          intervals measured (total body reading)           
mean_total_acceleration_X: (numeric) arithmetic mean of the measurements of the X-axis across the time intervals 
          measured (total body reading)
sd_total_acceleration_X: (numeric) standard deviation of the measurements of the X-axis across the time 
          intervals measured (gyroscope reading) 



mean_body_acceleration_Y: (numeric) arithmetic mean of the measurements of the Y-axis across the time intervals 
          measured (body acceleration reading)
sd_body_acceleration_Y: (numeric) standard deviation of the measurements of the Y-axis across the time 
          intervals measured (body accelerationreading)
mean_body_acceleration_Z: (numeric) arithmetic mean of the measurements of the Z-axis across the time interval           
          measured (body acceration reading)
sd_body_acceleration_Z: (numeric) standard deviation of the measurements of the Z-axis across the time 
          intervals measured (body body reading)           
mean_body_acceleration_X: (numeric) arithmetic mean of the measurements of the X-axis across the time intervals 
          measured (body body reading)
sd_body_acceleration_X: (numeric) standard deviation of the measurements of the X-axis across the time 
          intervals measured (gyroscope reading) 



