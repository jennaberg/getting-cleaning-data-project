
(README - how the file works code book has informaiton about the variables and summaries with units and other info)

intro comments: 

notes: in order to run this script you will have to

         1. have the data from the experiment in your working directory (that is the file named UCI HAR Dataset) and in no way altered the file structure therein)
          2. have installed the packages dplyr, plyr, and matrixStats

the script will output two tidy data frames: 

          *df1 has the means and standard deviations for all the measurement variables
          *df2 has the average measurement for each subject over their multiple trials
          
          
the script produces df1 in the following fashion

          1.the script reads all of the files into R using the read.table command (both test and train)
          2. for the files including subject id and activity type the headers "subject id" and "activity type" are added (using colnames) (both test and train)
          3.the "activity type" variable is turned into a factor and the numerical levels are replaced with the verbal descriptors (both test and train)
          4. the "subject id" variable for the train data set is modified so that subject ids are unique across  the test/train subgrous
          5. the dataframe (df1) is built up starting with the test subjects, and then then training subjects as follows:id/activity main dataframe by sucessive applications of rowmeans or rowSds to the dataframes for each measurement. in the case of rowSds (a function requiring the matrixStats package) the data frame is first converted to a matrix using the data.matrix function. the meaasuremensts are added first for the time measurements, next the gyroscope measuements (in standard axial order), followed by the acceleration measurements (total, then body, in each subcase following traditional axial ordering) [see the codebook for descriptions of the measurement variables]
          6. the test measurement (mean and sd) data frame and the training measurement dataframe are then joiined using rbind. (this results in df1 - the first requested data frame)
          7. the resulting dataframe is then grouped first by subject id and then by activity type, this allows  the summarize_each funciton (calling the function mean) to give the arithmetic mean for each subject's collection of observations for each activity type. (resulting in df2, the second requested data frame)
          
