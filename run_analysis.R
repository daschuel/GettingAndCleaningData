library(reshape2)

cleanup_feature_name <- function(feature_name) {
# Tidy up the variable names.
        feature_name <- gsub('(.*)\\1', '\\1', feature_name)
        feature_name <- gsub('\\(\\)', '', feature_name)
        feature_name <- gsub('-([XYZ])$', ' \\1-axis', feature_name)
        feature_name <- gsub('^t', '', feature_name)
        feature_name <- gsub('^f(.*)', '\\1 FFT', feature_name)
        feature_name <- gsub('([a-z])([A-Z])', '\\1 \\2', feature_name)
        feature_name <- gsub('([Mm])ag', '\\1agnitude', feature_name)
        feature_name <- gsub('([Aa])cc?', '\\1cceleration', feature_name)
        feature_name <- gsub('(.*)(mean|std)(.*)', '\\1\\3 \\2', feature_name)
        feature_name <- gsub('-', '', feature_name)
        feature_name <- gsub('([XYZ])axis', '\\1-axis', feature_name)
        return(feature_name)
}

X_train <- read.table('train/X_train.txt')      # Read training data
X_test <- read.table('test/X_test.txt') # Read test data
X_both <- rbind(X_train, X_test)        # Combine training and test data
features <- read.table('features.txt')  # Read list of features from text file to use as headings.
features <- lapply(features, cleanup_feature_name)      # Apply the cleanup function to the list of feature names.

colnames(X_both) <- features$V2 # Assign the feature names to the column names of the main running data file.

X_both <- subset(X_both,        # Pick out only the variable names from the main file that 
        select=(        # Represent means or standard deviations.
                grepl('(mean|std)', names(X_both))
                )
        )

Y_train <- read.table('train/Y_train.txt')      # Read in the activity type training est
Y_test <- read.table('test/Y_test.txt') # Read in the activity type test set.
Y_both <- rbind(Y_train, Y_test)        # Combine training and test activity
activity_names <- c('walking', 'walking_upstairs', 'walking_downstairs', 'sitting', 'standing', 'laying')       # List of clear activity names.
Y_both <- data.frame(Y_both)    # Cast activities names in a data frame.
Y_both <- sapply(Y_both, function(x){activity_names[as.numeric(x)]})    # Replace activity numbers with activity names
colnames(Y_both) <- "Activity"  # Apply label to activity column

X_both <- cbind(Y_both, X_both) # Combine activities with the rest of the data set.

subjects_train <- read.table('train/subject_train.txt') # Read in subject list from training.
subject_test <- read.table('test/subject_test.txt')     # Read in subject list from testing.
subject_both <- rbind(subjects_train, subject_test)     # Combine testing and training.
colnames(subject_both) <- "Subject"     # Apply heading to subject list.
X_both <- cbind(subject_both, X_both)   # Combine subject list with rest of data.


X_melt <- melt(X_both, id=c("Subject", "Activity"))     # Melt by subject and activity for next step.
# print("head(X_melt): ")
# print(head(X_melt))
# print("dim(X_melt): ")
# print(dim(X_melt))

X_mean <- dcast(X_melt, Subject + Activity~variable, mean)      # Cast data into a new data frame with means by subject and activity.

write.table(X_mean, file='means_by_subject_and_activity.txt', row.name=FALSE)   # Write final table file.
