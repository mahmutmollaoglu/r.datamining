dataset <- read.csv("https://bahadirfyildirim.com/media/documents/Fin500.csv")
head(dataset,20) #veri setinin ilk 20 satırı
tail(dataset,20) #veri setinin son 20 satırı
str(dataset)
summary(dataset)

dataset$Industry <- as.factor(dataset$Industry)
summary(dataset)
dataset$Inception <- as.factor(dataset$Inception)
dataset$State <- as.factor(dataset$State)

gsub(" Dollars", "", dataset$Expenses) 
dataset$Expenses <- gsub(" Dollars", "", dataset$Expenses)
dataset$Expenses <- gsub(",", "", dataset$Expenses)
dataset$Expenses <- as.numeric(dataset$Expenses)
str(dataset)
summary(dataset)
dataset$Growth <- as.numeric(gsub("%", "", dataset$Growth))

dataset$Revenue <- gsub("\\$", "", dataset$Revenue)
str(dataset)
dataset$Revenue <- as.numeric(gsub(",", "", dataset$Revenue))
summary(dataset)
dataset$City <- as.factor(dataset$City)
