##here i will keep track of the packages i need to load
library(plyr)
library(dplyr)
library(matrixStats)

##codes for dowloading  the test data 
      #this is the identifying data (add col names here)
testSubjects<-read.table("UCI HAR Dataset/test/subject_test.txt")

          #i want to take the activity type and make it into a factor
g<-c("walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying")
testActData<-read.table("UCI HAR Dataset/test/y_test.txt")
test_activity_type<-factor(testActData[,1], labels=g)


      #time
testTimeData<-read.table("UCI HAR Dataset/test/X_test.txt")
      
      #gryoscope reads
inertialBodyGyroYtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
inertialBodyGyroZtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
inertialBodyGyroXtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")

      #total acceleration reads
inertialTotalAccYtest<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
inertialTotalAccZtest<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
inertialTotalAccXtest<-read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")

      #body acceleration reads
inertialBodyAccYtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
inertialBodyAccZtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
inertialBodyAccXtest<-read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")

##same but for the training group
      ##this is the id data 
trainSubjects<-read.table("UCI HAR Dataset/train/subject_train.txt")
#note that the subject Ids need to have 24(the numer of test subjects) added so subject id becomes unique
trainSubjects<-trainSubjects+24


#i want to take the activity type and make it into a factor CAUTION this is resetting a variable name (important while coding)
g<-c("walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying")
trainActData<-read.table("UCI HAR Dataset/train/y_train.txt")
train_activity_type<-factor(trainActData[,1], labels=g)



      ##time data 
trainTimeData<-read.table("UCI HAR Dataset/train/X_train.txt")
     
      ##gryoscope reads
inertialBodyGyroYtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
inertialBodyGyroZtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
inertialBodyGyroXtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")

      ##total acceleration reads
inertialTotalAccYtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
inertialTotalAccZtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
inertialTotalAccXtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")

      ##body acceleration reads
inertialBodyAccYtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
inertialBodyAccZtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
inertialBodyAccXtrain<-read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")


##next i will add the columns summarizing the measurements attached to each TEST obervation
testTrial<-rep("test", 2947)
testData<-cbind(testSubjects, testTrial, test_activity_type)
colnames(testData)<-c("subject_id", "trial", "activity_type")
#others

testData$time_mean<-rowMeans(testTimeData)
testData$time_sd<-rowSds(data.matrix(testTimeData))

testData$mean_gyroscope_Y<-rowMeans(inertialBodyGyroYtest)
testData$sd_gyroscope_Y<-rowSds(data.matrix(inertialBodyGyroYtest))
testData$mean_gyroscope_Z<-rowMeans(inertialBodyGyroZtest)
testData$sd_gyroscope_Z<-rowSds(data.matrix(inertialBodyGyroZtest))
testData$mean_gyroscope_X<-rowMeans(inertialBodyGyroXtest)
testData$sd_gyroscope_X<-rowSds(data.matrix(inertialBodyGyroXtest))

testData$mean_total_acceleration_Y<-rowMeans(inertialTotalAccYtest)
testData$sd_total_acceleration_Y<-rowSds(data.matrix(inertialTotalAccYtest))
testData$mean_total_acceleration_Z<-rowMeans(inertialTotalAccZtest)
testData$sd_total_acceleration_Z<-rowSds(data.matrix(inertialTotalAccZtest))
testData$mean_total_acceleration_X<-rowMeans(inertialTotalAccXtest)
testData$sd_total_acceleration_X<-rowSds(data.matrix(inertialTotalAccXtest))

testData$mean_body_acceleration_Y<-rowMeans(inertialBodyAccYtest)
testData$sd_body_acceleration_Y<-rowSds(data.matrix(inertialBodyAccYtest))
testData$mean_body_acceleration_Z<-rowMeans(inertialBodyAccZtest)
testData$sd_body_acceleration_Z<-rowSds(data.matrix(inertialBodyAccZtest))
testData$mean_body_acceleration_X<-rowMeans(inertialBodyAccXtest)
testData$sd_body_acceleration_X<-rowSds(data.matrix(inertialBodyAccXtest))


##next i will add the columns summarizing the measurements attached to each TRIAL obervation


trainTrial<-rep("train", 7352)
trainData<-cbind(trainSubjects, trainTrial, train_activity_type)
colnames(trainData)<-c("subject_id", "trial", "activity_type")
#others

trainData$time_mean<-rowMeans(trainTimeData)
trainData$time_sd<-rowSds(data.matrix(trainTimeData))

trainData$mean_gyroscope_Y<-rowMeans(inertialBodyGyroYtrain)
trainData$sd_gyroscope_Y<-rowSds(data.matrix(inertialBodyGyroYtrain))
trainData$mean_gyroscope_Z<-rowMeans(inertialBodyGyroZtrain)
trainData$sd_gyroscope_Z<-rowSds(data.matrix(inertialBodyGyroZtrain))
trainData$mean_gyroscope_X<-rowMeans(inertialBodyGyroXtrain)
trainData$sd_gyroscope_X<-rowSds(data.matrix(inertialBodyGyroXtrain))

trainData$mean_total_acceleration_Y<-rowMeans(inertialTotalAccYtrain)
trainData$sd_total_acceleration_Y<-rowSds(data.matrix(inertialTotalAccYtrain))
trainData$mean_total_acceleration_Z<-rowMeans(inertialTotalAccZtrain)
trainData$sd_total_acceleration_Z<-rowSds(data.matrix(inertialTotalAccZtrain))
trainData$mean_total_acceleration_X<-rowMeans(inertialTotalAccXtrain)
trainData$sd_total_acceleration_X<-rowSds(data.matrix(inertialTotalAccXtrain))

trainData$mean_body_acceleration_Y<-rowMeans(inertialBodyAccYtrain)
trainData$sd_body_acceleration_Y<-rowSds(data.matrix(inertialBodyAccYtrain))
trainData$mean_body_acceleration_Z<-rowMeans(inertialBodyAccZtrain)
trainData$sd_body_acceleration_Z<-rowSds(data.matrix(inertialBodyAccZtrain))
trainData$mean_body_acceleration_X<-rowMeans(inertialBodyAccXtrain)
trainData$sd_body_acceleration_X<-rowSds(data.matrix(inertialBodyAccXtrain))

##next i can bind the test and train data sets together to get what i think is the tidy data set 

df1<-rbind(testData, trainData)

df2<-group_by(df1, subject_id, activity_type)

df3<-summarise_each(df2, funs(mean))

