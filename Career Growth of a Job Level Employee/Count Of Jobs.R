# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

#Count of Job Levels by Education Field

ggplot(job_Data, aes(x = EducationField, fill = factor(JobLevel))) +
  geom_bar(stat = "count", position = "dodge", width = 0.7) +
  labs(x = "Education Field", y = "Count", title = "Counts of Job Levels by Education Field") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Count of Job Levels by Job Role

ggplot(job_Data, aes(x = JobRole, fill = factor(JobLevel))) +
  geom_bar(stat = "count", position = "dodge", width = 0.7) +
  labs(x = "Job Role", y = "Count", title = "Counts of Job Levels by Job Role") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))