# email to Prof: 
# elmerperamo@gmail.com

## Load all the datasets
WHO=read.csv("WHO.csv")

## WHO DATASET ANSWERS

#COUNTRY WITH BIGGEST POPULATION
WHO$Country[MaxCountryPopID]

#Answer: [1] China
WHO$Population[MaxCountryPopID]

#Prof
sum(WHO$Population>50000)
#Xavier's version
dim(WHO[which(WHO$Population > 50000),])[]
#

length(WHO$Country[WHO$Population > 50000])
#Answer: 1390000

WHO$Country[WHO$Population == max(WHO$Population)]
WHO$Country[which.max(WHO$Population)]


# POPULATION OF MALAYSIA
#Answer: 29240
WHO$Population[which(WHO$Country=="Malaysia")]

#COUNTRY WITH LOWEST LITERACY
# Answer: MALI
WHO$Country[which.min(WHO$LiteracyRate)]
WHO$Country[minLiteracyID]


# RICHEST COUNTRY IN EUROPE BASED ON GNI
# Answer: LUXEMBOURG
WHO.Europe = subset(WHO, Region=="Europe")
EuropeGNIMaxID = which.max(WHO.Europe$GNI)
WHO.Europe$Country[EuropeGNIMaxID]
WHO.Europe$Country[which.max(WHO.Europe$GNI)]


#MEAN LIFE EXPECTANCY OF AFRICAN COUNTRIES
#57.96 
WHO.Africa = subset(WHO, Region=="Africa")
summary(WHO.Africa)

#NUMBER OF COUNTRIES WITH POPULATION GREATER THAN 10,000
#ANSWER: 86
HighPop=WHO[WHO$Population>10,000]
summary(HighPop)

#TOP 5 COUNTRIES IN AMERICAS WITH HIGHEST CHILD MORTALITY
#Get tail of Dataframe sorted according to ChildMortality
tail(WHO.Americas[order(WHO.Americas$ChildMortality),])

#123                        Nicaragua Americas       5992   33.37   6.59          2.59
#52                Dominican Republic Americas      10277   30.53   8.97          2.55
#70                         Guatemala Americas      15083   40.80   6.56          3.91
#73                            Guyana Americas        795   36.77   5.18          2.64
#21  Bolivia (Plurinational State of) Americas      10496   35.23   7.28          3.31
#74                             Haiti Americas  

# NBA DATASET

#Using ReadXL Library
library(readxl)
Historical_NBA_Performance <- read_excel("RProgGlobal/Historical NBA Performance.xlsx")
View(Historical_NBA_Performance)

#Using CSV
Historical_NBA_Performance <- read.csv("Historical NBA Performance.xlsx")

## Year Bulls has Highest Winning Percentage
Bulls <- Historical_NBA_Performance[Historical_NBA_Performance$Team=='Bulls',]
Bulls$Year[which.max(Bulls$'Winning Percentage')]
#ANSWER: "1995-96"

## Teams with an even win-loss record in a year
aggregate(Historical_NBA_Performance$'Winning Percentage'==0.5, by=list(Category=Historical_NBA_Performance$Team), FUN=sum)

#ANSWER: 76ers, Bucks, Celtics, Clippers, Hawks, Hornets, Jazz, Knicks, Magic, Mavericks, Nets, Nuggets, Pacers, Raptors, Rockets, Royals, Spurs, Suns, Supersonics, Timberwolves, Tral Blazers, Warriors, Wizards

# Seasons_Stats.csv
seasonstats <- read.csv('RProgGlobal/Seasons_Stats.csv')

# a. Player with the highest 3-pt attempt rate in a season.
seasonstats$Player[which.max(seasonstats$X3P.)]
#Answer: Gus Bailey (but I assumed there was only one who did this haha, basketball idiot)

# b. Player with the highest free throw rate in a season.
seasonstats$Player[which.max(seasonstats$FT.)]
#Answer: Paul Cloyd

#Sir Elmer's Original Intended Question
seasonstats$Player[which.max(seasonstats$FTr)]

# c. What year/season does Lebron James scored the highest?
LeBron <- seasonstats[seasonstats$Player=='LeBron James',]

LeBron$Year[which.max(LeBron$PTS)]
#Answer: 2006

# d. What year/season does Michael Jordan scored the highest?
Jordan <- seasonstats[seasonstats$Player=='Michael Jordan*',]

Jordan$Year[which.max(Jordan$PTS)]
#Answer: 1987

# e. Player efficiency rating of Kobe Bryant in the year where his MP is the lowest?
Kobe <- seasonstats[seasonstats$Player=='Kobe Bryant',]

Kobe$PER[which.min(Kobe$MP)]
#Answer: 10.7 

#  National Universities Rankings.csv

natunirank <- read.csv('RProgGlobal/National Universities Rankings.csv')

# a. University with the most number of undergrads 
natunirank$Name[which.max(natunirank$Undergrad.Enrollment)]
#Answer: Tennessee Technological University

#b. Average Tuition in the Top 10 University
#Determine the top 10 Universities
natunirank$Name[natunirank$Rank[1:10]]

#Tuition Fee Values to Average
tuitions <- natunirank$Tuition.and.fees[natunirank$Rank[1:10]]
tuitionchar <- as.character(tuitions)

tuitions2 <- lapply(tuitionchar, gsub, pattern='\\$', replacement='')
tuitions2

tuitions3 <- lapply(tuitions2, gsub, pattern='\\,', replacement='')
tuitions3
tuitions <- as.numeric(tuitions3)

mean(tuitions)
#The answer is $50,888 
