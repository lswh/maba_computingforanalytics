# Load the required packages:
install.packages("devtools")
library(devtools)
library(ggplot2)
library(dplyr)
library(reshape2)
library(treemapify)
library(reshape2)
library(ggplotify)

#Please ensure glue is v1.3 for Mac; I got an error from that sucker

mood<-read.csv('BulletJournalData.csv')
macbook<-read.csv('FinalExamData_Barrameda_raw.csv')
# show the structure of the dataset
head(mood)
head(macbook)

summary(macbook)
summary(mood)

class(macbook)
class(mood)

colnames(macbook)

head(macbook,5)


# Which projects got the most time from August to November?
#Bar chart
colnames(macbook)


# How many hours were spent per project

topprojects <- tapply(macbook$Duration/3600,macbook$Project,sum)
topprojectsbarchart <- data.frame(Priority=names(topprojects), Hours=topprojects)
topprojectsbarchart <- mutate(topprojectsbarchart, LifeCategory = "Life")
topprojectsbarchart[1,3]<-"Trading"
topprojectsbarchart[2,3]<-"DevOps"
topprojectsbarchart[3,3]<-"Data"
topprojectsbarchart[4,3]<-"Updates/Installs"
topprojectsbarchart[5,3]<-"Data"
topprojectsbarchart[6,3]<-"Personal"
topprojectsbarchart[7,3]<-"Acads"
topprojectsbarchart[8,3]<-"Data"

topprojs <- ggplot(topprojectsbarchart, aes(x = Priority, y = Hours)) + geom_col(colour= "pink", fill="blue", mapping=NULL,topprojectsbarchart,position="stack",width=NULL,na.rm=TRUE,show.legend=TRUE,inherit.aes=TRUE)
topprojs <- topprojs + theme(axis.text = element_text(size = 6)) 
topprojs

treemapcoords <- treemapify(topprojectsbarchart, area="Hours")
head(treemapcoords)
topprojtreemap<- ggplot(topprojectsbarchart, ggplot2::aes(area=Hours,fill=LifeCategory,label = Priority)) + geom_treemap() + geom_treemap_text(grow=TRUE) + labs(title="H's Life Priority in Computer Hours")
topprojtreemap


# Top Macbook Applications


#Bar chart

# Top Guilty Pleasures
# A Simple List will Do

## Determine the formula and create a new productivity dataset by day
# Calculate my productivity per day 

# Which Day is My Most Productive Day? My Most Productive Time? 
#Average productivity per day

## Add a self-care score column on mood dataset

## Merge productivity score dataset with mood dataset

## Correlate Self-Care and Productivity Scores for Linear Regression


 