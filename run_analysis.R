if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/accelerometers.zip")
dateDownloaded <- date()

dataset<-unzip("./data/accelerometers.zip")
list(dataset)

testsubject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
testx<-read.table("./UCI HAR Dataset/test/X_test.txt")
testy<-read.table("./UCI HAR Dataset/test/y_test.txt")

trainsubject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
trainx<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainy<-read.table("./UCI HAR Dataset/train/y_train.txt")

test<-data.frame("subject"=testsubject$V1,"activity"=testy$V1,"tBodyAcc-mean()-X"=testx$V1,
            "tBodyAcc-mean()-Y"=testx$V2,"tBodyAcc-mean()-Z"=testx$V3,"tBodyAcc-std()-X"=testx$V4,
            "tBodyAcc-std()-Y"=testx$V5,"tBodyAcc-std()-Z"=testx$V6,"tGravityAcc-mean()-X"=testx$V41,
            "tGravityAcc-mean()-Y"=testx$V42,"tGravityAcc-mean()-Z"=testx$V43,"tGravityAcc-std()-X"=testx$V44,
            "tGravityAcc-std()-Y"=testx$V45,"tGravityAcc-std()-Z"=testx$V46,"tBodyAccJerk-mean()-X"=testx$V81,
            "tBodyAccJerk-mean()-Y"=testx$V82,"tBodyAccJerk-mean()-Z"=testx$V83,"tBodyAccJerk-std()-X"=testx$V84,
            "tBodyAccJerk-std()-Y"=testx$V85,"tBodyAccJerk-std()-Z"=testx$V86,"tBodyGyro-mean()-X"=testx$V121,
            "tBodyGyro-mean()-Y"=testx$V122,"tBodyGyro-mean()-Z"=testx$V123,"tBodyGyro-std()-X"=testx$V124,
            "tBodyGyro-std()-Y"=testx$V125,"tBodyGyro-std()-Z"=testx$V126,"tBodyGyroJerk-mean()-X"=testx$V161,
            "tBodyGyroJerk-mean()-Y"=testx$V162,"tBodyGyroJerk-mean()-Z"=testx$V163,"tBodyGyroJerk-std()-X"=testx$V164,
            "tBodyGyroJerk-std()-Y"=testx$V165,"tBodyGyroJerk-std()-Z"=testx$V166,"tBodyAccMag-mean()"=testx$V201,
            "tBodyAccMag-std()"=testx$V202,"tGravityAccMag-mean()"=testx$V214,"tGravityAccMag-std()"=testx$V215,
            "tBodyAccJerkMag-mean()"=testx$V227,"tBodyAccJerkMag-std()"=testx$V228,"tBodyGyroMag-mean()"=testx$V240,
            "tBodyGyroMag-std()"=testx$V241,"tBodyGyroJerkMag-mean()"=testx$V253,"tBodyGyroJerkMag-std()"=testx$V254,
            "fBodyAcc-mean()-X"=testx$V266,"fBodyAcc-mean()-Y"=testx$V267,"fBodyAcc-mean()-Z"=testx$V268,"fBodyAcc-std()-X"=testx$V269,
            "fBodyAcc-std()-Y"=testx$V270,"fBodyAcc-std()-Z"=testx$V271,"fBodyAccJerk-mean()-X"=testx$V345,"fBodyAccJerk-mean()-Y"=testx$V346,
            "fBodyAccJerk-mean()-Z"=testx$V347,"fBodyAccJerk-std()-X"=testx$V348,"fBodyAccJerk-std()-Y"=testx$V349,
            "fBodyAccJerk-std()-Z"=testx$V350,"fBodyGyro-mean()-X"=testx$V424,"fBodyGyro-mean()-Y"=testx$V425,
            "fBodyGyro-mean()-Z"=testx$V426,"fBodyGyro-std()-X"=testx$V427,"fBodyGyro-std()-Y"=testx$V428,
            "fBodyGyro-std()-Z"=testx$V429,"fBodyAccMag-mean()"=testx$V503,"fBodyAccMag-std()"=testx$V504,
            "fBodyBodyAccJerkMag-mean()"=testx$V516,"fBodyBodyAccJerkMag-std()"=testx$V517,"fBodyBodyGyroMag-mean()"=testx$V529,
            "fBodyBodyGyroMag-std()"=testx$V530,"fBodyBodyGyroJerkMag-mean()"=testx$V542,"fBodyBodyGyroJerkMag-std()"=testx$V543)

train<-data.frame("subject"=trainsubject$V1,"activity"=trainy$V1,"tBodyAcc-mean()-X"=trainx$V1,
             "tBodyAcc-mean()-Y"=trainx$V2,"tBodyAcc-mean()-Z"=trainx$V3,"tBodyAcc-std()-X"=trainx$V4,
             "tBodyAcc-std()-Y"=trainx$V5,"tBodyAcc-std()-Z"=trainx$V6,"tGravityAcc-mean()-X"=trainx$V41,
             "tGravityAcc-mean()-Y"=trainx$V42,"tGravityAcc-mean()-Z"=trainx$V43,"tGravityAcc-std()-X"=trainx$V44,
             "tGravityAcc-std()-Y"=trainx$V45,"tGravityAcc-std()-Z"=trainx$V46,"tBodyAccJerk-mean()-X"=trainx$V81,
             "tBodyAccJerk-mean()-Y"=trainx$V82,"tBodyAccJerk-mean()-Z"=trainx$V83,"tBodyAccJerk-std()-X"=trainx$V84,
             "tBodyAccJerk-std()-Y"=trainx$V85,"tBodyAccJerk-std()-Z"=trainx$V86,"tBodyGyro-mean()-X"=trainx$V121,
             "tBodyGyro-mean()-Y"=trainx$V122,"tBodyGyro-mean()-Z"=trainx$V123,"tBodyGyro-std()-X"=trainx$V124,
             "tBodyGyro-std()-Y"=trainx$V125,"tBodyGyro-std()-Z"=trainx$V126,"tBodyGyroJerk-mean()-X"=trainx$V161,
             "tBodyGyroJerk-mean()-Y"=trainx$V162,"tBodyGyroJerk-mean()-Z"=trainx$V163,"tBodyGyroJerk-std()-X"=trainx$V164,
             "tBodyGyroJerk-std()-Y"=trainx$V165,"tBodyGyroJerk-std()-Z"=trainx$V166,"tBodyAccMag-mean()"=trainx$V201,
             "tBodyAccMag-std()"=trainx$V202,"tGravityAccMag-mean()"=trainx$V214,"tGravityAccMag-std()"=trainx$V215,
             "tBodyAccJerkMag-mean()"=trainx$V227,"tBodyAccJerkMag-std()"=trainx$V228,"tBodyGyroMag-mean()"=trainx$V240,
             "tBodyGyroMag-std()"=trainx$V241,"tBodyGyroJerkMag-mean()"=trainx$V253,"tBodyGyroJerkMag-std()"=trainx$V254,
             "fBodyAcc-mean()-X"=trainx$V266,"fBodyAcc-mean()-Y"=trainx$V267,"fBodyAcc-mean()-Z"=trainx$V268,"fBodyAcc-std()-X"=trainx$V269,
             "fBodyAcc-std()-Y"=trainx$V270,"fBodyAcc-std()-Z"=trainx$V271,"fBodyAccJerk-mean()-X"=trainx$V345,"fBodyAccJerk-mean()-Y"=trainx$V346,
             "fBodyAccJerk-mean()-Z"=trainx$V347,"fBodyAccJerk-std()-X"=trainx$V348,"fBodyAccJerk-std()-Y"=trainx$V349,
             "fBodyAccJerk-std()-Z"=trainx$V350,"fBodyGyro-mean()-X"=trainx$V424,"fBodyGyro-mean()-Y"=trainx$V425,
             "fBodyGyro-mean()-Z"=trainx$V426,"fBodyGyro-std()-X"=trainx$V427,"fBodyGyro-std()-Y"=trainx$V428,
             "fBodyGyro-std()-Z"=trainx$V429,"fBodyAccMag-mean()"=trainx$V503,"fBodyAccMag-std()"=trainx$V504,
             "fBodyBodyAccJerkMag-mean()"=trainx$V516,"fBodyBodyAccJerkMag-std()"=trainx$V517,"fBodyBodyGyroMag-mean()"=trainx$V529,
             "fBodyBodyGyroMag-std()"=trainx$V530,"fBodyBodyGyroJerkMag-mean()"=trainx$V542,"fBodyBodyGyroJerkMag-std()"=trainx$V543)

mergeddata<-merge(test,train,all=TRUE)

mergeddata$activity[mergeddata$activity==1]<-"walking"
mergeddata$activity[mergeddata$activity==2]<-"walking upstairs"
mergeddata$activity[mergeddata$activity==3]<-"walking downstairs"
mergeddata$activity[mergeddata$activity==4]<-"sitting"
mergeddata$activity[mergeddata$activity==5]<-"standing"
mergeddata$activity[mergeddata$activity==6]<-"laying"

library(reshape2)
mergeddatamelt<-melt(mergeddata,id=c("subject","activity"),measure.var=setdiff(setdiff(names(mergeddata),"subject"),"activity"))
average<-dcast(mergeddatamelt,subject+activity~variable,mean)
subject<-dcast(mergeddatamelt,subject~variable,mean)
activity<-dcast(mergeddatamelt,activity~variable,mean)
averagedata<-merge(average,merge(subject,activity,all=TRUE),all=TRUE)

write.table(averagedata,file="./data/averagedata.txt",row.name=FALSE)