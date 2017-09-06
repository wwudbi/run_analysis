Codebook 

General Steps:
•	Load library plyr
•	Check working directory, then set to "..../getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
•	Extract test features , then rename column names  
•	Extract test activity labels, then rename column names  
•	Extract test datasets, then set column name programmatically as features
•	Combine test subject, activity label, and X dataset into single test data frame
•	Extract train features, then rename column names  
•	Extract train activity labels, then rename column names  
•	Extract train datasets, then set column name programmatically as features
•	Combine train subject, activity label, and X dataset into single train data frame
•	Assignment STEP 1: Merges the training and the test sets to create one data set
•	Obtain list of columns which include mean or std as part of names.  
•	Also include the subject and activity label columns on the left     
•	Assignment STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement
•	Assignment STEP 3: Uses descriptive activity names to name the activities in the data set    
•	Assignment STEP 4: Appropriately labels the data set with descriptive variable names  
•	Set subject and activity as factor
•	Assignment STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject  
•	Write tidy data result into CSV file  

Variable list and descriptions:
Variable Name	Description
features_name	Data frame read from “feature.txt” file
activity_label	Data frame read from “activity_labels.txt” file
subject_test_data	Data frame read from “subject_test.txt” file
X_test_data	Data frame read from “X_test.txt” file
y_test_data	Data frame read from “y_test.txt” file
test_data	Data frame combined from subject_test_data, y_test_data, and X_test_data
subject_train_data	Data frame read from “subject_train.txt” file
X_train_data	Data frame read from “X_train.txt” file
y_train_data	Data frame read from “y_train.txt” file
train_data	Data frame combined from subject_train_data, y_train_data, and X_train_data
merged_data	Data frame combined from test_data and train_data
col_list	List of columns from
-	subject
-	activity
-	merge_data column includes “mean”
-	merge_data column includes “std”
subset_data	Subset of merge_data data frame where column names in col_list
tidy_data	Mean aggregated data frame from subset_data group by subject and ActivityName

Dataset Structure:
> str(tidy_data)
'data.frame':	180 obs. of  81 variables:
 $ Group.1                        : Factor w/ 30 levels "1","2","3","4",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ Group.2                        : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ tBodyAcc.mean...X              : num  0.222 0.281 0.276 0.264 0.278 ...
 $ tBodyAcc.mean...Y              : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 $ tBodyAcc.mean...Z              : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 $ tGravityAcc.mean...X           : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
 $ tGravityAcc.mean...Y           : num  0.706 0.753 0.837 0.915 0.955 ...
 $ tGravityAcc.mean...Z           : num  0.446 0.647 0.489 0.342 0.264 ...
 $ tBodyAccJerk.mean...X          : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
 $ tBodyAccJerk.mean...Y          : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
 $ tBodyAccJerk.mean...Z          : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 $ tBodyGyro.mean...X             : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 $ tBodyGyro.mean...Y             : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 $ tBodyGyro.mean...Z             : num  0.149 0.145 0.138 0.17 0.16 ...
 $ tBodyGyroJerk.mean...X         : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
 $ tBodyGyroJerk.mean...Y         : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 $ tBodyGyroJerk.mean...Z         : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 $ tBodyAccMag.mean..             : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ tGravityAccMag.mean..          : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ tBodyAccJerkMag.mean..         : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
 $ tBodyGyroMag.mean..            : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
 $ tBodyGyroJerkMag.mean..        : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
 $ fBodyAcc.mean...X              : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
 $ fBodyAcc.mean...Y              : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
 $ fBodyAcc.mean...Z              : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
 $ fBodyAcc.meanFreq...X          : num  -0.159 -0.146 -0.074 -0.274 -0.136 ...
 $ fBodyAcc.meanFreq...Y          : num  0.0975 0.2573 0.2385 0.3662 0.4665 ...
 $ fBodyAcc.meanFreq...Z          : num  0.0894 0.4025 0.217 0.2013 0.1323 ...
 $ fBodyAccJerk.mean...X          : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
 $ fBodyAccJerk.mean...Y          : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
 $ fBodyAccJerk.mean...Z          : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
 $ fBodyAccJerk.meanFreq...X      : num  0.132 0.16 0.176 0.182 0.24 ...
 $ fBodyAccJerk.meanFreq...Y      : num  0.0245 0.1212 -0.0132 0.0987 0.1957 ...
 $ fBodyAccJerk.meanFreq...Z      : num  0.0244 0.1906 0.0448 0.077 0.0917 ...
 $ fBodyGyro.mean...X             : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
 $ fBodyGyro.mean...Y             : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
 $ fBodyGyro.mean...Z             : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
 $ fBodyGyro.meanFreq...X         : num  -0.00355 0.10261 -0.08222 -0.06609 -0.02272 ...
 $ fBodyGyro.meanFreq...Y         : num  -0.0915 0.0423 -0.0267 -0.5269 0.0681 ...
 $ fBodyGyro.meanFreq...Z         : num  0.0105 0.0553 0.1477 0.1529 0.0414 ...
 $ fBodyAccMag.mean..             : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
 $ fBodyAccMag.meanFreq..         : num  0.0864 0.2663 0.237 0.2417 0.292 ...
 $ fBodyBodyAccJerkMag.mean..     : num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
 $ fBodyBodyAccJerkMag.meanFreq.. : num  0.266 0.342 0.239 0.274 0.197 ...
 $ fBodyBodyGyroMag.mean..        : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
 $ fBodyBodyGyroMag.meanFreq..    : num  -0.1398 0.0186 -0.0229 -0.2599 0.1024 ...
 $ fBodyBodyGyroJerkMag.mean..    : num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
 $ fBodyBodyGyroJerkMag.meanFreq..: num  0.1765 0.2648 0.1107 0.2029 0.0247 ...
 $ tBodyAcc.std...X               : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
 $ tBodyAcc.std...Y               : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
 $ tBodyAcc.std...Z               : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
 $ tGravityAcc.std...X            : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
 $ tGravityAcc.std...Y            : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
 $ tGravityAcc.std...Z            : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
 $ tBodyAccJerk.std...X           : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
 $ tBodyAccJerk.std...Y           : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
 $ tBodyAccJerk.std...Z           : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
 $ tBodyGyro.std...X              : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
 $ tBodyGyro.std...Y              : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
 $ tBodyGyro.std...Z              : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
 $ tBodyGyroJerk.std...X          : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
 $ tBodyGyroJerk.std...Y          : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
 $ tBodyGyroJerk.std...Z          : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
 $ tBodyAccMag.std..              : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ tGravityAccMag.std..           : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ tBodyAccJerkMag.std..          : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
 $ tBodyGyroMag.std..             : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
 $ tBodyGyroJerkMag.std..         : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
 $ fBodyAcc.std...X               : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
 $ fBodyAcc.std...Y               : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
 $ fBodyAcc.std...Z               : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
 $ fBodyAccJerk.std...X           : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
 $ fBodyAccJerk.std...Y           : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
 $ fBodyAccJerk.std...Z           : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
 $ fBodyGyro.std...X              : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
 $ fBodyGyro.std...Y              : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
 $ fBodyGyro.std...Z              : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
 $ fBodyAccMag.std..              : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
 $ fBodyBodyAccJerkMag.std..      : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
 $ fBodyBodyGyroMag.std..         : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
 $ fBodyBodyGyroJerkMag.std..     : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...


List the columns in the dataset:
> names(tidy_data)
 [1] "Group.1"                         "Group.2"                         "tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
 [7] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
[10] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
[13] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
[16] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
[19] "tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
[22] "tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[25] "fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[28] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
[31] "fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[34] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[37] "fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[40] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
[43] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[46] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."
[49] "tBodyAcc.std...X"                "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
[52] "tGravityAcc.std...X"             "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[55] "tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[58] "tBodyGyro.std...X"               "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[61] "tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[64] "tBodyAccMag.std.."               "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."          
[67] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
[70] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"           
[73] "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
[76] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"               "fBodyAccMag.std.."              
[79] "fBodyBodyAccJerkMag.std.."       "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."     


Show a few rows of the dataset:

> head(tidy_data)
  Group.1 Group.2 tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tGravityAcc.mean...X
1       1  LAYING         0.2215982       -0.04051395        -0.1132036           -0.2488818
2       2  LAYING         0.2813734       -0.01815874        -0.1072456           -0.5097542
3       3  LAYING         0.2755169       -0.01895568        -0.1013005           -0.2417585
4       4  LAYING         0.2635592       -0.01500318        -0.1106882           -0.4206647
5       5  LAYING         0.2783343       -0.01830421        -0.1079376           -0.4834706
6       6  LAYING         0.2486565       -0.01025292        -0.1331196           -0.4767099
  tGravityAcc.mean...Y tGravityAcc.mean...Z tBodyAccJerk.mean...X tBodyAccJerk.mean...Y
1            0.7055498            0.4458177            0.08108653           0.003838204
2            0.7525366            0.6468349            0.08259725           0.012254788
3            0.8370321            0.4887032            0.07698111           0.013804101
4            0.9151651            0.3415313            0.09344942           0.006933132
5            0.9548903            0.2636447            0.08481648           0.007474608
6            0.9565938            0.1758677            0.09634820          -0.001145292
  tBodyAccJerk.mean...Z tBodyGyro.mean...X tBodyGyro.mean...Y tBodyGyro.mean...Z tBodyGyroJerk.mean...X
1           0.010834236       -0.016553094        -0.06448612          0.1486894             -0.1072709
2          -0.001802649       -0.018476607        -0.11180082          0.1448828             -0.1019741
3          -0.004356259       -0.020817054        -0.07185072          0.1379996             -0.1000445
4          -0.006410543       -0.009231563        -0.09301282          0.1697204             -0.1050199
5          -0.003040672       -0.021893501        -0.07987096          0.1598944             -0.1021141
6           0.003288173       -0.007960503        -0.10721832          0.1791021             -0.1112673
  tBodyGyroJerk.mean...Y tBodyGyroJerk.mean...Z tBodyAccMag.mean.. tGravityAccMag.mean..
1            -0.04151729            -0.07405012         -0.8419292            -0.8419292
2            -0.03585902            -0.07017830         -0.9774355            -0.9774355
3            -0.03897718            -0.06873387         -0.9727913            -0.9727913
4            -0.03812304            -0.07121563         -0.9545576            -0.9545576
5            -0.04044469            -0.07083097         -0.9667779            -0.9667779
6            -0.04241043            -0.07177747         -0.9188789            -0.9188789
  tBodyAccJerkMag.mean.. tBodyGyroMag.mean.. tBodyGyroJerkMag.mean.. fBodyAcc.mean...X fBodyAcc.mean...Y
1             -0.9543963          -0.8747595              -0.9634610        -0.9390991        -0.8670652
2             -0.9877417          -0.9500116              -0.9917671        -0.9767251        -0.9798009
3             -0.9794846          -0.9515648              -0.9867136        -0.9806656        -0.9611700
4             -0.9700958          -0.9302365              -0.9850685        -0.9588021        -0.9388834
5             -0.9801413          -0.9469383              -0.9864194        -0.9687417        -0.9654195
6             -0.9547505          -0.9089802              -0.9556457        -0.9391143        -0.9237068
  fBodyAcc.mean...Z fBodyAcc.meanFreq...X fBodyAcc.meanFreq...Y fBodyAcc.meanFreq...Z
1        -0.8826669           -0.15879267            0.09753484            0.08943766
2        -0.9843810           -0.14648279            0.25728947            0.40253255
3        -0.9683321           -0.07395264            0.23847075            0.21697167
4        -0.9675043           -0.27419462            0.36623145            0.20132959
5        -0.9770077           -0.13563245            0.46652823            0.13231087
6        -0.9380449           -0.21972993            0.34841875            0.16145793
  fBodyAccJerk.mean...X fBodyAccJerk.mean...Y fBodyAccJerk.mean...Z fBodyAccJerk.meanFreq...X
1            -0.9570739            -0.9224626            -0.9480609                0.13241909
2            -0.9858136            -0.9827683            -0.9861971                0.15980833
3            -0.9805132            -0.9687521            -0.9791223                0.17597855
4            -0.9785425            -0.9439700            -0.9753833                0.18243648
5            -0.9826897            -0.9653286            -0.9832503                0.23991516
6            -0.9670724            -0.9360434            -0.9544258                0.01147319
  fBodyAccJerk.meanFreq...Y fBodyAccJerk.meanFreq...Z fBodyGyro.mean...X fBodyGyro.mean...Y
1                0.02451362                0.02438795         -0.8502492         -0.9521915
2                0.12120642                0.19055822         -0.9864311         -0.9833216
3               -0.01317750                0.04481969         -0.9701673         -0.9780997
4                0.09874288                0.07702112         -0.9672037         -0.9721878
5                0.19567734                0.09169388         -0.9757975         -0.9782496
6               -0.02220295                0.07846840         -0.9354398         -0.9417715
  fBodyGyro.mean...Z fBodyGyro.meanFreq...X fBodyGyro.meanFreq...Y fBodyGyro.meanFreq...Z
1         -0.9093027           -0.003546796            -0.09152913             0.01045813
2         -0.9626719            0.102611319             0.04228067             0.05529860
3         -0.9623420           -0.082216645            -0.02668201             0.14768646
4         -0.9614793           -0.066092182            -0.52689000             0.15288631
5         -0.9632029           -0.022723586             0.06812485             0.04136003
6         -0.9326366            0.102549066             0.02365678             0.04452255
  fBodyAccMag.mean.. fBodyAccMag.meanFreq.. fBodyBodyAccJerkMag.mean.. fBodyBodyAccJerkMag.meanFreq..
1         -0.8617676             0.08640856                 -0.9333004                      0.2663912
2         -0.9751102             0.26629821                 -0.9853741                      0.3417586
3         -0.9655243             0.23699013                 -0.9759496                      0.2386111
4         -0.9393897             0.24169790                 -0.9622871                      0.2740273
5         -0.9622350             0.29203209                 -0.9773564                      0.1970050
6         -0.9123517             0.14460509                 -0.9486555                      0.1825251
  fBodyBodyGyroMag.mean.. fBodyBodyGyroMag.meanFreq.. fBodyBodyGyroJerkMag.mean..
1              -0.8621902                 -0.13977501                  -0.9423669
2              -0.9721130                  0.01856447                  -0.9902487
3              -0.9645867                 -0.02292961                  -0.9842783
4              -0.9615567                 -0.25985197                  -0.9836091
5              -0.9682571                  0.10244177                  -0.9846180
6              -0.9301536                  0.11931752                  -0.9536960
  fBodyBodyGyroJerkMag.meanFreq.. tBodyAcc.std...X tBodyAcc.std...Y tBodyAcc.std...Z tGravityAcc.std...X
1                      0.17648591       -0.9280565       -0.8368274       -0.8260614          -0.8968300
2                      0.26480151       -0.9740595       -0.9802774       -0.9842333          -0.9590144
3                      0.11069770       -0.9827766       -0.9620575       -0.9636910          -0.9825122
4                      0.20294938       -0.9541937       -0.9417140       -0.9626673          -0.9212000
5                      0.02473671       -0.9659345       -0.9692956       -0.9685625          -0.9456953
6                      0.16376532       -0.9340494       -0.9246448       -0.9252161          -0.8877463
  tGravityAcc.std...Y tGravityAcc.std...Z tBodyAccJerk.std...X tBodyAccJerk.std...Y tBodyAccJerk.std...Z
1          -0.9077200          -0.8523663           -0.9584821           -0.9241493           -0.9548551
2          -0.9882119          -0.9842304           -0.9858722           -0.9831725           -0.9884420
3          -0.9812027          -0.9648075           -0.9808793           -0.9687107           -0.9820932
4          -0.9698166          -0.9761766           -0.9783028           -0.9422095           -0.9785120
5          -0.9859641          -0.9770766           -0.9833079           -0.9645604           -0.9854194
6          -0.9591620          -0.9281307           -0.9663411           -0.9336745           -0.9596461
  tBodyGyro.std...X tBodyGyro.std...Y tBodyGyro.std...Z tBodyGyroJerk.std...X tBodyGyroJerk.std...Y
1        -0.8735439        -0.9510904        -0.9082847            -0.9186085            -0.9679072
2        -0.9882752        -0.9822916        -0.9603066            -0.9932358            -0.9895675
3        -0.9745458        -0.9772727        -0.9635056            -0.9803286            -0.9867627
4        -0.9731024        -0.9611093        -0.9620738            -0.9751032            -0.9868556
5        -0.9794987        -0.9774274        -0.9605838            -0.9834223            -0.9837595
6        -0.9553782        -0.9436349        -0.9391419            -0.9396116            -0.9586288
  tBodyGyroJerk.std...Z tBodyAccMag.std.. tGravityAccMag.std.. tBodyAccJerkMag.std.. tBodyGyroMag.std..
1            -0.9577902        -0.7951449           -0.7951449            -0.9282456         -0.8190102
2            -0.9880358        -0.9728739           -0.9728739            -0.9855181         -0.9611641
3            -0.9833383        -0.9642182           -0.9642182            -0.9761213         -0.9542751
4            -0.9839654        -0.9312922           -0.9312922            -0.9607864         -0.9470318
5            -0.9896796        -0.9586128           -0.9586128            -0.9774771         -0.9582879
6            -0.9595791        -0.8973262           -0.8973262            -0.9503419         -0.9209145
  tBodyGyroJerkMag.std.. fBodyAcc.std...X fBodyAcc.std...Y fBodyAcc.std...Z fBodyAccJerk.std...X
1             -0.9358410       -0.9244374       -0.8336256       -0.8128916           -0.9641607
2             -0.9897181       -0.9732465       -0.9810251       -0.9847922           -0.9872503
3             -0.9831393       -0.9836911       -0.9640946       -0.9632791           -0.9831226
4             -0.9826982       -0.9524649       -0.9463810       -0.9621545           -0.9800793
5             -0.9837714       -0.9649539       -0.9729092       -0.9658822           -0.9856253
6             -0.9531570       -0.9324629       -0.9297112       -0.9240047           -0.9686192
  fBodyAccJerk.std...Y fBodyAccJerk.std...Z fBodyGyro.std...X fBodyGyro.std...Y fBodyGyro.std...Z
1           -0.9322179           -0.9605870        -0.8822965        -0.9512320        -0.9165825
2           -0.9849874           -0.9893454        -0.9888607        -0.9819106        -0.9631742
3           -0.9710440           -0.9837119        -0.9759864        -0.9770325        -0.9672569
4           -0.9443669           -0.9802612        -0.9750947        -0.9561825        -0.9658075
5           -0.9662426           -0.9861356        -0.9807058        -0.9772578        -0.9633057
6           -0.9357175           -0.9635675        -0.9621650        -0.9453651        -0.9471368
  fBodyAccMag.std.. fBodyBodyAccJerkMag.std.. fBodyBodyGyroMag.std.. fBodyBodyGyroJerkMag.std..
1        -0.7983009                -0.9218040             -0.8243194                 -0.9326607
2        -0.9751214                -0.9845685             -0.9610984                 -0.9894927
3        -0.9683502                -0.9753054             -0.9554419                 -0.9825682
4        -0.9371880                -0.9580371             -0.9471003                 -0.9825436
5        -0.9625254                -0.9763819             -0.9592631                 -0.9834345
6        -0.9053740                -0.9515527             -0.9286949                 -0.9555047

Save to text file:
write.table(tidy_data,file="./tidy_data.txt",row.name=FALSE)


Thank you!
