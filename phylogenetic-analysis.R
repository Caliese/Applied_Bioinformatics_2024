#Author: Caliese Beckford; Date: September 18, 2024; Purpose: To create dummy data, generate phylogenetic tree plot

#Load tree library
library(ape)

#Generate some dummy data
#Ones in bracket together are closely related
text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

#Read data is tree structure
vert.tree<-read.tree(text=text.string)

#Generate a basic plot of dummy data (rooted plot)
plot(vert.tree,no.margin=TRUE,edge.width=2,main="Phylogenetic Tree")

#Generate un-rooted plot on the dummy data -no root or start point
#used to look at the relationship of the species as opposed to the origin
plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial", edge.width=2)
