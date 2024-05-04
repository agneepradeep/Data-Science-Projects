# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

ggplot(job_Data, aes(x = EducationField, fill = factor(JobSatisfaction))) +
  geom_bar(stat = "count", position = "dodge", width = 0.7) +
  labs(x = "Education Field", y = "Count", title = "Counts of Job Satisfaction by Education Field") + theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability


