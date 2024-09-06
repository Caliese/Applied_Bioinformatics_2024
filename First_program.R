#load library before using package
library(affy)	

#Reading microarray data (set working directory)	
setwd("C:/Users/calie/Downloads/GSE344_RAW")

#Load the dataset
data <- ReadAffy()

#plot the data
#the black line is the median, the broken lines lead to min and max
boxplot(data)

#plot with labels
boxplot(data, xlab="Samples", ylab= "Genes", main= "Raw Microarray Plot", col="pink")



