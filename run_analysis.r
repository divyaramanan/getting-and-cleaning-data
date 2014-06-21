#READ ACTIVITY LABELS AND NAME THE COLUMNS AS "ID" AND "NAME"
activity <- read.table("activity_labels.txt")
names(activity) <- c('id', 'name')

#READ FEATURES AND NAME THE COLUMNS AS "ID" AND "NAME"
features <- read.table("features.txt")
names(features) <- c('id', 'name')

#READ THE TRAINING SET OF X AND ASSIGN THE FEATURE NAMES AS THE COLUMN NAMES
tr_X <- read.table("train/X_train.txt")
names(tr_X) <- features$name

#READ THE TESTING SET OF X AND ASSIGN THE FEATURE NAMES AS THE COLUMN NAMES
te_X <- read.table("test/X_test.txt")
names(te_X) <- features$name

#READ THE TRAINING SET OF SUBJECT AND NAME THE COLUMN AS SUBJECT 
sub_train <- read.table("train/subject_train.txt")
names(sub_train) <- c('subject')

#READ THE TESTING SET OF SUBJECT AND NAME THE COLUMN AS SUBJECT
sub_test <- read.table("test/subject_test.txt")
names(sub_test) <- c('subject')

#READ THE TRAINING SET OF Y AND ASSIGN THE ACTIVITY AS THE COLUMN NAME
tr_Y <- read.table("train/y_train.txt")
names(tr_Y) <- c('activity')

#READ THE TESTING SET OF Y AND ASSIGN THE ACTIVITY AS THE COLUMN NAME
te_Y <- read.table("test/y_test.txt")
names(te_Y) <- c('activity')

#ROW BIND AND MERGE TRAINING SET OF X WITH TESTING SET OF X
bindX <- rbind(tr_X,te_X)

#ROW BIND AND MERGE TRAINING SET OF Y WITH TESTING SET OF Y
bindY <- rbind(tr_Y,te_Y)

#ROW BIND AND MERGE TRAINING SET OF SUBJECT WITH TESTING SET OF SUBJECT
bindsub <- rbind(sub_train,sub_test)

#ASSIGN MEANINGFUL ACTIVITY NAMES TO THE BINDED Y DATASET
bindY$activity <- activity[bindY$activity,]$name

#FILTER THE FEATURES OF X THAT HAS ONLY THE MEASUREMENTS OF MEAN OR STANDARD DEVIATION
bindX <- bindX[, grep('mean|std', features$name)]

#COLUMN BINDING OF X,Y AND SUBJECT DATASET
clean_data <- cbind(bindsub,bindY,bindX)

#WRITING THE TIDY DATA INTO "clean.csv"
write.csv(clean_data,"clean.csv")

#CALCULATING AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT 
avg <- aggregate(clean_data[,3:dim(clean_data)[2]],list(clean_data$subject,clean_data$activity),mean)
names(avg)[1:2] <- c('subject', 'activity')

#WRITING THE AVERAGE DATA INTO "average.csv"
write.csv(avg,"average.csv")



