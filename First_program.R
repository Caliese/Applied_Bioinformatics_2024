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

#Assign first 2 samples as treatment and the next 2 samples as control
Treatment <- data_norm[,1:2]
Control <- data_norm[,3:4]

Treatment <- data_norm[,1:2]
Control <- data_norm[,3:4]

#Comparing treatment and control groups using forward change analysis
average_treatment <- rowMeans(Treatment)
average_control <- rowMeans(Control)

#Subtraction (calculate fold change)
fold_change <- average_treatment - average_control

#Any value that is +1.5 and above is upregulated, below that is down regulted
#Up regulated gene is over expressed
#Down reguulation is under expressed
#Fold change > 1.5 up-regulated; < -1.5 down regulated