library(data.table)
library(dplyr)

# In this function, read the data files (X_test.txt and X_train.txt)
# split the rows ("\n") and the columns (" ")
# named the columns with numbers and at the end
# we select the columns that we are interested in
get_data <- function(dir){
  
  setwd(paste("./",dir,sep=""))                           # Read the file
  file <- paste("X_",dir,".txt",sep="")
  data <- fread(file,sep="\n",header=F)
  
  data <- lapply(sapply(data,strsplit,"[ ]+"),as.numeric) # slipt the rows
  data <- as.data.frame(t(as.data.frame(data)))           # transpose the matrix to
                                                          # keep the login order
  data <- tbl_df(data)
  data <- select(data,2:ncol(data))                       # selected all data less NA
  colnames(data) <- 1:ncol(data)                          # located in the first column
  
  setwd("..")                                             # select the columns that
  data_selected <- select(data,selected_col)              # we want
}

# Select the subjects of each file 
# (subject_test.txt and subject_train.txt)
get_subject <- function(dir){
  setwd(paste("./",dir,sep=""))
  
  file_subject <- paste("subject_",dir,".txt",sep="")
  subject <- fread(file_subject,header=F)
  setwd("..")
  subject
}

# Select the activity labels of each file 
# (y_test.txt and y_train.txt)
# Step 1. Read the activity_id
# Step 2. Match selected activity_id with the
# vector activity_labels. activity_labels works as key,value
# where the Key = Id, Value = Activity_label.
# we have the id, and get the label
get_activity <- function(dir){
  setwd(paste("./",dir,sep=""))
  file_activity <- paste("y_",dir,".txt",sep="")        # read the file
  activity_num <- fread(file_activity,header=F)
  setwd("..")
  
  activity_names <- activity_labels[activity_num[,V1],V2] # getting the labels
                                                          # with the ids
  activity_names <- as.data.frame(gsub("_"," ",activity_names))
  colnames(activity_names)<- "Activity"
  tbl_df(activity_names)
}

# This function is in charge of:
# 1. Call to get the data
# 2. Call to get the activity
# 3. Call to get the subject
# 4. Join all data from the same source (train and later test)
# 5. Merge all data, train and test, all together
# As result, we have the data from test, train, subject and activity
merge_all <- function(){
  data_test <- get_data(test_dir)                         # test_data
  activity_test <- get_activity(test_dir)                 # test_activity
  subject_test <- get_subject(test_dir)                   # test_subject
  test <- tbl_df(cbind(subject_test,activity_test,data_test)) # all together
  
  data_train <- get_data(train_dir)                       # train_data
  activity_train <- get_activity(train_dir)               # train_activity
  subject_train <- get_subject(train_dir)                 # train_subject
  train <- tbl_df(cbind(subject_train,activity_train,data_train)) #all together
  
  all_data <- rbind(train,test)                     # train and test data merged
}


feature_name <- fread("features.txt",header=F)            # read the features
activity_labels <- fread("activity_labels.txt",header=F)  # read the activity labels

mean_vec <- grep("mean",feature_name$V2)                  # we got the labels with
std_vec <- grep("std",feature_name$V2)                    # mean and std
selected_col <- sort(c(mean_vec,std_vec))                 # in the selected_col
rm("mean_vec")
rm("std_vec")

dir <- list.dirs(getwd(),recursive=F,full.names=F)        # Getting the test and 
test_dir <- dir[grep("test",dir)]                         # train dir
train_dir <- dir[grep("train",dir)]
rm("dir")

data <- merge_all()                                       # Call to merge_all
names(data)[1] <- "Subject"                               # Set col names
names(data)[3:81] <- feature_name[selected_col,V2]

tidy_data <- data %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))

rm("activity_labels")
rm("feature_name")

print(tidy_data)
