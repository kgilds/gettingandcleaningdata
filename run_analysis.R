# Set the working directory

setwd("C:/Users/kevin/Dropbox/R/cleaningData/project")

#Load Libaries

library(dplyr)
library(qdap)

#Read train data in R

train <-read.table("X_train.txt")

subjectTrain <- read.table("subject_train.txt")

y_train <-read.table("y_train.txt")

activitylist <- read.table("activity_labels_train.txt")


# Merge into the Train Data


#Lookup Table 
activitylistA  <- lookup(y_train, activitylist)

# Convert Lookup Table to data frame. 
activitylistA<-as.data.frame(activitylistA)

#Bind subjectTrain and train tother.
train1<-cbind(subjectTrain, train)

#Bind activitylistA, with Train 1
train2 <-cbind(activitylistA, train1)

#Change the train column names

colnames (train2) [1] <- "activity"
colnames (train2) [2] <- "subjectId"



# Read Test data into R

test <-read.table("X_test.txt")

test.y <- read.table("y_test.txt")

subjectTest <-read.table("subject_test.txt")



# Merge into the Test data. 

#Lookup Table 
activitylistC  <- lookup(test.y, activitylist)

# Convert Lookup Table to data frame. 
activitylistC<-as.data.frame(activitylistC)

test1 <- cbind(subjectTest, test)


#Lookup Table 
activitylistC  <- lookup(test.y, activitylist)

# Convert Lookup Table to data frame. 
activitylistC<-as.data.frame(activitylistC)


test2 <-cbind(activitylistC,test1)



# Change column names in test data set

colnames (test2) [1] <- "activity"
colnames (test2) [2] <- "subjectId"

names(train2)
names(test2)

#### Merge Train Data Set and Test Data Set

final <-rbind(train2, test2)




# Change Column Names
colnames (final) [3] <-  "tBodyAcc-mean-X"  
colnames (final) [4] <-  "tBodyAcc-mean-Y"  
colnames (final) [5] <-  "tBodyAcc-mean-Z"  
colnames (final) [6] <-  "tBodyAcc-std-X"   
colnames (final) [7] <-  "tBodyAcc-std-Y"   
colnames (final) [8] <-  "tBodyAcc-std-Z"   
colnames (final) [39] <-  "tGravityAcc-mean-X" 
colnames (final) [40] <- "tGravityAcc-mean-Y"
colnames (final) [41]<-  "tGravityAcc-mean-Z" 
colnames (final) [42] <-  "tGravityAcc-std-X"  
colnames (final) [43] <-  "tGravityAcc-std-Y" 
colnames (final) [44]  <-  "tGravityAcc-std-Z"  
colnames (final) [79] <-  "tBodyAccJerk-mean-X" 
colnames (final) [80] <-  "tBodyAccJerk-mean-Y" 
colnames (final) [81] <-  "tBodyAccJerk-mean-Z" 
colnames (final) [82] <-  "tBodyAccJerk-std-X" 
colnames (final) [83] <- "tBodyAccJerk-std-Y" 
colnames (final) [84]<- "tBodyAccJerk-std-Z" 
colnames (final) [119]<-  "tBodyGyro-mean-X" 
colnames (final)[120] <-  "tBodyGyro-mean-Y" 
colnames (final) [121] <- "tBodyGyro-mean-Z" 
colnames (final) [122] <-  "tBodyGyro-std-X"  
colnames (final) [123] <-  "tBodyGyro-std-Y"  
colnames (final) [124] <-  "tBodyGyro-std-Z" 
colnames (final) [159] <-  "tBodyGyroJerk-mean-X" 
colnames (final) [160] <-  "tBodyGyroJerk-mean-Y" 
colnames (final) [161] <-  "tBodyGyroJerk-mean-Z" 
colnames (final) [162] <-  "tBodyGyroJerk-std-X"  
colnames (final) [163] <-  "tBodyGyroJerk-std-Y"  
colnames (final) [164] <-  "tBodyGyroJerk-std-Z"  
colnames (final) [199] <-  "tBodyAccMag-mean"
colnames (final) [200] <-  "tBodyAccMag-std"  
colnames (final) [212] <-  "tGravityAccMag-mean" 
colnames (final) [213] <-  "tGravityAccMag-std"  
colnames (final)[225] <-  "tBodyAccJerkMag-mean"
colnames (final) [226]<-  "tBodyAccJerkMag-std"  
colnames (final) [238] <-  "tBodyGyroMag-mean" 
colnames (final) [239] <-  "tBodyGyroMag-std"  
colnames (final) [251]<- "tBodyGyroJerkMag-mean" 
colnames (final) [252] <- "tBodyGyroJerkMag-std"  
colnames (final) [264] <-  "fBodyAcc-mean-X"  
colnames (final) [265] <-  "fBodyAcc-mean-Y"  
colnames (final) [266] <-  "fBodyAcc-mean-Z"  
colnames (final) [267] <-  "fBodyAcc-std-X"   
colnames (final) [268] <-  "fBodyAcc-std-Y"  
colnames (final) [269] <-  "fBodyAcc-std-Z" 
colnames (final) [343] <-  "fBodyAccJerk-mean-X"  
colnames (final) [344] <-  "fBodyAccJerk-mean-Y"  
colnames (final) [345] <-  "fBodyAccJerk-mean-Z" 
colnames (final) [346] <-  "fBodyAccJerk-std-X"   
colnames (final) [347] <-  "fBodyAccJerk-std-Y" 
colnames (final) [348] <-  "fBodyAccJerk-std-Z"  
colnames (final) [422] <-  "fBodyGyro-mean-X"  
colnames (final) [423] <-  "fBodyGyro-mean-Y"  
colnames (final) [424] <-  "fBodyGyro-mean-Z" 
colnames (final) [425] <-  "fBodyGyro-std-X"  
colnames (final) [426] <-  "fBodyGyro-std-Y"   
colnames (final) [427] <- "fBodyGyro-std-Z"
colnames (final) [501] <-  "fBodyAccMag-mean" 
colnames (final) [502] <- "fBodyAccMag-std"  
colnames (final) [514] <-  "fBodyBodyAccJerkMag-mean" 
colnames (final) [517] <-  "fBodyBodyAccJerkMag-std"  
colnames (final) [527] <-  "fBodyBodyGyroMag-mean" 
colnames (final) [528] <-  "fBodyBodyGyroMag-std" 
colnames (final) [540] <-  "fBodyBodyGyroJerkMag-mean" 
colnames (final) [541] <-  "fBodyBodyGyroJerkMag-std"  



#Subset  the Mean and SD columns

final1 <- final [, c(1,2,3,4,5,6,7,8,39,40,41,42,43,44,79,80,81,82,83,84,119,120,121,122,123,124,159,160,161,162,163,164,199,200, 212,213,225,226,238,239, 251,252, 264,265,266,267,268,269,343,344,345,346,347,348,422,423,424,425,426,427,501,502,514,517,527,528,540,541)]

names(final1)

#Summarize Data by Subject ID and Activities

personActivities <-group_by(final1, subjectId,  activity)




dataCleaningProject<-summarise_each(personActivities,funs(mean))

head(dataCleaningProject, n=3)

write.table(dataCleaningProject, "projectFinal.txt", row.names=FALSE)



