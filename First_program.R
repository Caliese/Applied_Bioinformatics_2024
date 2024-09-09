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

#Perform normalization on raw datasets
#Explain what is normalization
#Normalization does not affect the spread of the data, the min or max values
data_norm <- rma(data)

#To extract (gene) expression values
data_norm <- exprs(data_norm)

#Plot the normalized dataset
boxplot(data_norm, xlab="Samples", ylab= "Genes", main= "Normalized Microarray Plot", col="green")
