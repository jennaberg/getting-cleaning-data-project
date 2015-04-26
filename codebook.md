---
title: "codebook"
author: "jenn berg"
date: "March 22, 2015"
output: html_document
---
this codebook describes the variables that occur in the dataframes that are outputs to the R-script run_analysis.R

df1 and df3 variables 

(note: df3 values are the aritmetic mean for all readings foreach subject for each activity type)

subject id: (numeric 2-54) the idenitification code for each subject 
trial: (character: test train) variable indicates if observation occurred in test group or in training group
activity type: (factor, levels: walking, walking upstairs, walking downstairs, sitting, standing, laying)

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



