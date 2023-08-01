library(readxl)
library(dplyr)
library(rstatix)
library(ggplot2) # Optional for data visualization
library(ggpubr)




SIRT1 <- read_excel("~/Couri_fall_23.xlsx", sheet = "SIRT1")
View(SIRT1)

SIRT1$Workload <- factor(SIRT1$Workload, levels = c("Rest", "Low", "Moderate", "High"))



# Create the bar plot with dodge position adjustment
bar_plot <- ggplot(SIRT1, aes(x = Workload, y = Concentration, fill = Sample)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.75), width = 0.75) +
  labs(x = "Workload", y = "ΔΔCt SIRT1 mRNA Fold Changes", fill = "Sample",
       title = "SIRT1") +
  theme_minimal()

# Print the plot
print(bar_plot)
