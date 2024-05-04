# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

#Montly Income vs Job Role

agg_data <- aggregate(MonthlyIncome ~ JobRole, data = job_Data, FUN = mean)

ggplot(agg_data, aes(x = JobRole, y = MonthlyIncome, fill = factor(JobLevel))) +
  geom_bar(stat = "identity", fill = "blue", width = 0.7) +  # Create the bar plot
  labs(x = "Job Role", y = "Monthly Income", title = "Job Role vs. Monthly Income") +  # Add axis labels and title
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability


#Montly Income vs EducationField

agg_data <- aggregate(MonthlyIncome ~ EducationField, data = job_Data, FUN = mean)

ggplot(agg_data, aes(x = EducationField, y = MonthlyIncome,)) +
  geom_bar(stat = "identity", fill = "blue", width = 0.7) +  # Create the bar plot
  labs(x = "Job Role", y = "Education Field", title = "Education Field vs. Monthly Income") +  # Add axis labels and title
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

#Montly Income vs Job ROle + Job Level

agg_data <- aggregate(MonthlyIncome ~ JobRole + JobLevel, data = job_Data, FUN = mean)

ggplot(agg_data, aes(x = JobRole, y = MonthlyIncome, fill = factor(JobLevel))) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +  # Create the bar plot with dodge position
  labs(x = "Job Role", y = "Mean Monthly Income", title = "Mean Monthly Income of Each Job Level by Job Role") +  # Add axis labels and title
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +  # Rotate x-axis labels for better readability
  scale_fill_discrete(name = "Job Level")  # Customize legend title
