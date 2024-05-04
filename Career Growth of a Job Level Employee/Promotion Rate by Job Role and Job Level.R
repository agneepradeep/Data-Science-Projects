# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

# Calculate Promotion Rate by Job Role
promotion_rate <- job_Data %>%
  group_by(JobRole) %>%
  summarise(PromotionRate = mean(Attrition == "No"))

# Create bar plot
ggplot(promotion_rate, aes(x = JobRole, y = PromotionRate)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "Job Role", y = "Promotion Rate", title = "Promotion Rate by Job Role") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

# Calculate Promotion Rate by Job Role Split Bars By Job Level
promotion_rate <- job_Data %>%
  group_by(JobRole, JobLevel) %>%
  summarise(PromotionRate = mean(Attrition == "No"))

# Create bar plot
ggplot(promotion_rate, aes(x = JobRole, y = PromotionRate, fill = factor(JobLevel))) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +  # Split bars by JobLevel
  labs(x = "Job Role", y = "Promotion Rate", fill = "Job Level", title = "Promotion Rate by Job Role with Split Bars by Job Level") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability