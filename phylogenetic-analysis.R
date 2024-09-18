#Author: Caliese Beckford; Date: September 18, 2024; Purpose: To create dummy data, generate phylogenetic tree plot

#Load tree library
library(ape)

#Generate some dummy data
#Ones in bracket together are closely related
string text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark)"

#Read the data as a tree structure