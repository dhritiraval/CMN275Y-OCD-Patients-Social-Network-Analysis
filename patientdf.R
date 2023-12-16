# Load required libraries
library(tidyr)
library(dplyr)
library(ggplot2)

#Importing csv with the filtered out columns 
patients <- read.csv("patients.csv")

# Create a bar plot for ordinal diagnoses data
barplot(table(patients$Prev_Diag), main = "Distribution of Previous Diagnoses", xlab = "Prev_Diag", ylab = "Frequency", col = "lightblue", border = "black")

# Showing every unique past diagnoses of the patients 
unique_diag <- unique(patients$Prev_Diag)
print(unique_diag)

#Renaming Panic Disorder to PD for uniform acronym look 
OldPanic <- "Panic Disorder"  
NewPanic <- "PD"  

patients$Prev_Diag[patients$Prev_Diag == OldPanic] <- NewPanic

#Copying into new dataframe after removing rows with "None" previous diagnoses
patientdf <- patients[patients$Prev_Diag != "None", ]

#Visualising frequency of new dataframe 
barplot(table(patientdf$Prev_Diag), main = "Distribution of Previous Diagnoses", xlab = "Prev_Diag", ylab = "Frequency", col = "lightblue", border = "black")

#Check if there are any duplicates in the patients and deleting if any
duplicated_values <- table(patientdf$Patient_ID[duplicated(patientdf$Patient_ID)])
print(duplicated_values)

patientdf <- patientdf[!duplicated(patientdf$Patient_ID), ]

patientdf

patientdf <- patientdf[, !(names(patientdf) %in% c("X", "X.1"))]

#saving csv file with the changes made
write.csv(patientdf, "patdf.csv", row.names = FALSE)

