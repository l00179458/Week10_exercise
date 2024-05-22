# Load necessary libraries
library(readr)
library(dplyr)

# Set working directory (modify this path to your working directory)
setwd("C:\\users\\abhil\\OneDrive\\Desktop\\drivers\\Week10_exercise")

# Load the data from CSV
data <- read_csv("Salary.csv")

# Display the first few rows of the data to verify
head(data)

# Display the structure of the data
str(data)

# Rename columns if necessary (if they have spaces or other characters)
names(data) <- c("CaseNum", "Salary", "Years", "Rating", "Number_of_Subjects")
# Get summary statistics
summary(data)

# Fit the multiple linear regression model
model <- lm(Salary ~ Years + Rating + Number_of_Subjects, data = data)

# Display the summary of the regression model
summary(model)


