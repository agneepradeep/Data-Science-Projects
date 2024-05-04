# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

job_Data <- read_csv("Z:\\VIT\\4TH SEMESTER\\PROBABILITY AND STATISTICS\\archive\\HR_Analytics.csv")

#Years in Current Role vs Job Level

agg_data <- aggregate(JobLevel ~ YearsInCurrentRole, data = job_Data, FUN = mean)

ggplot(agg_data, aes(x = YearsInCurrentRole, y = JobLevel)) +
  geom_bar(stat = "identity",fill = "blue", width = 0.5) +
  labs(x = "Years in Current Role", y = "Job Level") +
  ggtitle("Bar Plot: Years in Current Role vs. Job Level") + theme_minimal()

#Years in current Role vs Job level with Split bars by Job Level
agg_data <- aggregate(YearsInCurrentRole ~ JobRole + JobLevel, data = job_Data, FUN = mean)

# Plotting
ggplot(agg_data, aes(x = JobRole, y = YearsInCurrentRole, fill = factor(JobLevel))) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +  # Split bars by JobLevel
  labs(x = "Job Role", y = "Mean Years in Current Role", fill = "Job Level") +  # Axis labels and legend title
  ggtitle("Years in Current Role vs. Job Role with Split Bars by Job Level") +  # Title
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

