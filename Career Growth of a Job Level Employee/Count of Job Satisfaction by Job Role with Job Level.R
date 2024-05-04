# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

#Count of Job Satisfaction by Job Role with Job Level

agg_data <- job_Data %>%
  group_by(JobRole, JobLevel, JobSatisfaction) %>%
  summarise(Count = n())

# Plotting
ggplot(agg_data, aes(x = JobRole, y = Count, fill = factor(JobLevel))) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +  # Split bars by JobLevel
  labs(x = "Job Role", y = "Count", fill = "Job Level") +  # Axis labels and legend title
  ggtitle("Count of Job Satisfaction by Job Role with Split Bars by Job Level") +  # Title
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +  # Rotate x-axis labels for better readability
  facet_wrap(~ factor(JobLevel))  # Facet by JobLevel