run_analysis <- function() {
  library(plyr)
  setwd("C:/MyDoc/Reference/Library - Analytics 33/Coursera/003 Getting and Cleaning Data/Keep/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
  
  ## Extract features and activity labels  
  features_name <- read.delim(file="features.txt",header=FALSE,sep="")
  features_name <- rename(features_name, c("V1"="FeatureId","V2"="FeatureName"))
  
  activity_label <- read.delim(file="activity_labels.txt",header=FALSE,sep="")
  activity_label <- rename(activity_label, c("V1"="ActivityId","V2"="ActivityName"))
  
  ## Extract test datasets, set column name as features
  subject_test_data <- read.delim(file="./test/subject_test.txt",header=FALSE,col.names="subject")
  y_test_data <- read.delim(file="./test/y_test.txt",header=FALSE,col.names="activity")
  X_test_data <- read.table(file="./test/X_test.txt",header=FALSE,sep="",col.names=features_name[[2]])  
  
  ## Create combined test data from subject, activity label, and X dataset  
  test_data <- cbind.data.frame(subject_test_data, y_test_data, X_test_data)
  
  ## Extract train dataset and set names as features
  subject_train_data <- read.delim(file="./train/subject_train.txt",header=FALSE,col.names="subject")
  y_train_data <- read.delim(file="./train/y_train.txt",header=FALSE,col.names="activity")
  X_train_data <- read.table(file="./train/X_train.txt",header=FALSE,sep="",col.names=features_name[[2]])  
  
  ## Create combined train data from subject, activity label, and X dataset  
  train_data <- cbind.data.frame(subject_train_data, y_train_data, X_train_data)
  
  ## STEP 1: Merges the training and the test sets to create one data set
  merged_data <- rbind.data.frame(test_data, train_data)
  
  ## Obtain list of columns which include mean or std as part of names.  
  ## Also include the subject and activity label columns on the left     
  col_list <- append(append(c(1,2),grep("mean",names(merged_data))),grep("std",names(merged_data)))
  
  ## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement
  subset_data <- merged_data[, col_list]
  
  ## STEP 3: Uses descriptive activity names to name the activities in the data set    
  rename_data <- merge(subset_data,activity_label,by.x="activity",by.y="ActivityId",all=FALSE) 
  subset_data$activity <- rename_data$ActivityName
  
  ## STEP 4: Appropriately labels the data set with descriptive variable names  
  ## This step has already completed when read the files
  ## Set subject and activity as factor
  subset_data$subject <- as.factor(subset_data$subject)
  subset_data$activity <- as.factor(subset_data$activity)
  
  ## STEP 5: From the data set in step 4, creates a second, independent tidy data set with 
  ##  the average of each variable for each activity and each subject  
  install.packages("dplyr")
  library(dplyr)
  
  tidy_data <- aggregate(subset_data[3:81],by=list(subset_data$subject,subset_data$activity),FUN=mean,na.rm=TRUE)

  ##Write result into CSV file  
  write.csv(tidy_data,file="./tidy_data.csv")

  }


