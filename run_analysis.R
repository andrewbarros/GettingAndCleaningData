library(reshape)

pathForData <- function(file) {
	paste("UCI HAR Dataset/",file, sep="")
}

TEST_DATA <- 'test/X_test.txt'
TEST_LABELS <- 'test/y_test.txt'
TEST_SUBJECT <- 'test/subject_test.txt'
TRAIN_DATA <- 'train/X_train.txt'
TRAIN_LABELS <- 'train/y_train.txt'
TRAIN_SUBJECT <- 'train/subject_train.txt'
DATA_NAMES <- 'features.txt'
ACTIVITY_LABELS <- 'activity_labels.txt'

columnLabels <- read.table(pathForData(DATA_NAMES), as.is=T)$V2
keepColumns <- columnLabels[grepl("(std)|(mean)\\(\\)", columnLabels)]

testData <- read.table(pathForData(TEST_DATA), comment.char = "", header=F)
colnames(testData) <- columnLabels
testData <- testData[keepColumns]

testLabels <- read.table(pathForData(TEST_LABELS), comment.char = "", header=F)
testData$activity <- testLabels$V1

testSubject <- read.table(pathForData(TEST_SUBJECT), comment.char = "", header=F)
testData$subjectId <- testSubject$V1

trainData <- read.table(pathForData(TRAIN_DATA), comment.char = "", header=F)
colnames(trainData) <- columnLabels
trainData <- trainData[keepColumns]

trainLabels <- read.table(pathForData(TRAIN_LABELS), comment.char = "", header=F)
trainData$activity <- trainLabels$V1

trainSubject <- read.table(pathForData(TRAIN_SUBJECT), comment.char = "", header=F)
trainData$subjectId <- trainSubject$V1

labelDescriptions <- read.table(pathForData(ACTIVITY_LABELS), comment.char = "", header=F)

data <- rbind(testData, trainData)
data$activity <- factor(data$activity, labelDescriptions$V1, labelDescriptions$V2)
data$subjectId <- factor(data$subjectId)

tidy <- cast(melt(data, id=c("activity", "subjectId")), activity + subjectId ~ ..., fun.aggregate = mean)

write.csv(tidy, file="tidy.csv")

