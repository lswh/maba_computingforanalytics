# Outline: Where did my Macbook Time Go? 

* 1 RMarkdown
* 1+ CSV File
* 1 PDF Containing the Report

## Select Dataset - done
I chose to conduct an analysis of my Macbook computer usage for this final exam. My objective is to measure my personal productivity in using my Macbook. 
Note that I am also using a Windows machine and a server-grade Ubuntu desktop, so this laptop usage is just a partial trace of my activities for the period of August 13 to morning November 18.
 

## Clean the Dataset using R

* Raw Dataset
FinalExamData_Barrameda_raw.csv

* Tidied Dataset
tidydata_FinalExamHMB,csv

* Code Book
```
ID - Activity ID of Timing App
Duration - Number of seconds in the activity
Start Date - Data and Time start for a task
End Date - Date and Time end for a task
Project - What main project is being served by this specific activity? 
Application - Specific App Used
Title - Title on App Window 
Path - File or URL path
Containing Task IDs - I have not explored this feature yet on the tracking app so no significant data here
```

* Recipe for Cleaning the Dataset
The main cleanup work will fall mainly on Start Date, End Date, and Path
I will clean up Path if I have time and parse most visited websites and most accessed files

### Potential Sources of Data: 
* Personal Analytics (the chosen dataset)

## Explore the Graphs
I shall use ggplot2 or whichever works for me today. 
* Main Graph Showing High Level Distribution of my Activity Per Project
* Top Applications Used in My Macbook
* Top Time Wasters or Guilty Pleasures
* Days of Week with Best Productivity
* Percentage Productivity for the Last 3 Months


## Install TEX Requirement for PDF Knit -- DONE

 
