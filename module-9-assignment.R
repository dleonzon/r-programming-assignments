## Dimitri Leonzon
## LIS 4370
## Module 9 Assignment
## blog link: https://dleonzonlis4370.blogspot.com/2025/10/module-9-assignment.html

sportsCards <- read.csv("/Users/dimitri/Downloads/Sports Cards.csv")
str(sportsCards)

# Base Graph
# Bar Plot: Average Monthly Sports Card Spending by Gender
avg_spend <- tapply(sportsCards$permonth, sportsCards$gender, mean, na.rm = TRUE)

barplot(
  avg_spend,
  col = c("lightblue", "pink"),
  main = "Average Monthly Sports Card Spending by Gender",
  ylab = "Average Spending",
  xlab = "Gender"
)

sportsCards$income <- factor(sportsCards$income)

# Box Plot: Monthly Spending on Sports Cards by Income Bracket
boxplot(
  permonth ~ income,
  data = sportsCards,
  col = "lightgreen",
  main = "Monthly Spending on Sports Cards by Income Bracket",
  xlab = "Income Range",
  ylab = "Spending per Month"
)

# Lattice Plots
library(lattice)

# Set appropriate factors
sportsCards$gender    <- factor(sportsCards$gender)
sportsCards$dealer    <- factor(sportsCards$dealer)
sportsCards$income    <- factor(sportsCards$income)
sportsCards$education <- factor(sportsCards$education)

# Scatter plot: Monthly Spending vs Years in Hobby by Gender
xyplot(
  permonth ~ years | gender,
  data = sportsCards,
  type = c("p", "r"),
  pch = 16, col = "black",
  main = "Monthly Spending vs Years in Hobby by Gender",
  xlab = "Years in Hobby",
  ylab = "Spending per Month",
  subset = is.finite(years) & is.finite(permonth)
)

# Box-and-whisker plot: Spending per Month by Income Bracket
bwplot(
  permonth ~ income,
  data = sportsCards,
  main = "Spending per Month by Income Bracket",
  xlab = "Income Bracket",
  ylab = "Spending per Month",
  par.settings = list(box.rectangle = list(col = "black"), box.umbrella = list(col = "black")),
  subset = is.finite(permonth)
)

# ggplot2
# Scatter plot: Monthly Spending vs Years in Hobby by Gender
library(ggplot2)

ggplot(sportsCards, aes(x = years, y = permonth, color = factor(gender))) +
  geom_point(size = 2, alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, linewidth = 0.8) +
  labs(
    title = "Monthly Spending vs Years in Hobby by Gender",
    x = "Years in Hobby",
    y = "Spending per Month",
    color = "Gender"
  ) +
  theme_minimal(base_size = 13) +
  theme(panel.grid.minor = element_blank())

# Bin Histogram: Monthly Spending Distribution by Income Bracket
ggplot(sportsCards, aes(x = permonth)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "white", alpha = 0.8) +
  facet_wrap(~ income) +
  labs(
    title = "Monthly Spending Distribution by Income Bracket",
    x = "Spending per Month",
    y = "Count of Respondents"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    strip.text = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )
