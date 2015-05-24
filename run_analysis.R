# setwd("C:/Users/T/Documents/getting-data-kurs/kursprojekt")

# This script creates a tidy data set for data from the UCI machine learing repository
# Information on the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# 1. Merging of training and test sets

x.test <- read.table("./data/test/x_test.txt")
x.train <- read.table("./data/train/X_train.txt")
x.merged <- rbind(x.test, x.train)

y.test <- read.table("./data/test/y_test.txt")
y.train <- read.table("./data/train/y_train.txt")
y.merged <- rbind(y.test, y.train)
    
subject.train <- read.table("./data/train/subject_train.txt")
subject.test <- read.table("./data/test/subject_test.txt")
subject.merged <- rbind(subject.test, subject.train)

remove("x.test", "x.train", "y.test", "y.train", "subject.test", "subject.train") # Clearing up memory of not longer used train and test Variables

# 2. Extraction of only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("data/features.txt")
needed.indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
x.merged <- x.merged[,needed.indices]
names(x.merged) <- features[needed.indices, 2]
names(x.merged) <- tolower(names(x.merged))
names(x.merged) <- gsub("\\(|\\)", "", names(x.merged))

# 3. Using descriptive activity names to name the activities in the data set (According to Video lecture "Editing text variables from week 4)

activity.labels <- read.table("data/activity_labels.txt") 
activity.labels[,2] <- tolower(activity.labels[,2])
activity.labels[,2] <- gsub("_", "-", activity.labels[,2])
y.merged[,1] <- activity.labels[y.merged[,1], 2]
names(y.merged) <- "activity"

# 4. Labeling of the data set with descriptive variable names. 
names(subject.merged) <- "subject"
cleaned.data <- cbind(subject.merged, y.merged, x.merged)
write.table(cleaned.data, "tidy_data.txt") # Creating first tidy data set

# 5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

number.activities = length(activity.labels[,1])
number.colums = dim(cleaned.data)[2]
unique.subjects = unique(subject.merged)[,1]
number.subjects = length(unique(subject.merged)[,1])

mean = cleaned.data[1:(number.subjects*number.activities), ]

current.row = 1

for (a in 1:number.subjects) {
    for (b in 1:number.activities) {
        result[current.row, 1] <- unique.subjects[a] 
        result[current.row, 2] <- activity.labels[b,2]
        holder <- cleaned.data[cleaned.data$subject==a & cleaned.data$activity==activity.labels[b,2], ]
        mean[current.row, 3:number.colums] <- colMeans(holder[,3:number.colums])
        current.row = current.row + 1
    }
}

write.table(result, "tidy_data_averages.txt", row.name=FALSE )