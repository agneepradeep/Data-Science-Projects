# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

# Calculate count of each job level for each gender
joblevel_gender_counts <- job_Data %>%
  group_by(Gender, JobLevel) %>%
  summarise(Count = n())

# Create bar plot
ggplot(joblevel_gender_counts, aes(x = JobLevel, y = Count, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Job Level", y = "Count", title = "Distribution of Job Levels by Gender") +
  scale_fill_manual(values = c("skyblue", "pink")) +  # Custom colors for genders
  theme_minimal()  # Optional: Use a minimal theme for the plot