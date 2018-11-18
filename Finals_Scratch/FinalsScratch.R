## This is really incomplete code

### Dependencies
library(devtools)
library(ggplot2)
library(dplyr)
library(reshape2)
library(treemapify)
library(tidyr)
library(ggpubr)

### The Data


head(mood,1)
head(macbook,1)

### Preliminary Data Munging

#### Computing Concepts Applied per Chart

#Munging for Treemap Outlining My Computer Hour Distribution
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

#Munging for Most Active Weekdays
# 1 Row is One Keystroke detected by the Timing App on Macbook
weekdayds <- mutate(macbook, KeyStrokes=1,Day=as.POSIXlt(Date)$wday)
head(weekdayds)
weekdayds<-weekdayds[order(weekdayds$Day),]
head(weekdayds)
tail(weekdayds)
weekdayds$Day <- recode(weekdayds$Day, 
                        "0"="Sunday",
                        "1"="Monday",
                        "2"="Tuesday",
                        "3"="Wednesday",
                        "4"="Thursday",
                        "5"="Friday",
                        "6"="Saturday")

head(weekdayds)

weekdayplot<-ggplot(weekdayds, aes(x=Day)) + geom_bar(fill="blue")

#Munging for Guilty Pleasures Chart
personaldeepdive<-filter(macbook,Project=="Personal Time")
head(personaldeepdive)
path<-count(personaldeepdive,Path)
app<-count(personaldeepdive,Application)
app<-filter(app,n>=100)
app


### Super #WorkisLife, Apparently!
#Initially I did a bar chart but Cascadeo's hours stacked too high
#I sought the Treemapify library to extend ggplot to create a treemap diagram.
#Commented out the initial work I did which was not as pretty.
#topprojs <- ggplot(topprojectsbarchart, aes(x = Priority, y = Hours)) + geom_col(colour= "pink", fill="blue", mapping=NULL,topprojectsbarchart,position="stack",width=NULL,na.rm=TRUE,show.legend=TRUE,inherit.aes=TRUE)
#topprojs <- topprojs + theme(axis.text = element_text(size = 6)) 
#topprojs
