library(readxl)
library(dplyr)
library(rstatix)
library(ggplot2) # Optional for data visualization
library(ggpubr)

Df <- read_excel("~/Couri_fall_23.xlsx")
View(Df)

Df$Workload <- factor(Df$Workload, levels = c("Rest", "Low", "Moderate", "High"))


# Create the bar plot
bar_plot <- ggplot(Df, aes(x = Workload, y = Concentration, fill = Sample)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7)) +
  labs(x = "Workload", y = "Concentration", fill = "Sample",
       title = "Comparison of Concentration between eNOS and GAPDH for Different Workloads") +
  theme_minimal()

# Print the plot
print(bar_plot)

# Create the bar plot with dodge position adjustment
bar_plot <- ggplot(Df, aes(x = Workload, y = Concentration, fill = Sample)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.75), width = 0.75) +
  labs(x = "Workload", y = "ΔΔCt eNOS mRNA Fold Changes", fill = "Sample",
       title = "Comparison of Concentration between eNOS and GAPDH for Different Workloads") +
  theme_minimal()

# Print the plot
print(bar_plot)

