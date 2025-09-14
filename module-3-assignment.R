## Dimitri Leonzon
## LIS 4370
## Module 3 Assignment

## Libraries
library(ggplot2)
library(tidyr)

## Creating Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 9)

## Combine the vectors into a data frame and testing its output with the head() and str() functions.
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
head(df_polls)
str(df_polls)

## Find the Mean, Median, and Range for each poll
## ABC_poll
mean(ABC_poll)
median(ABC_poll)

## CBS_poll
mean(CBS_poll)
median(CBS_poll)

## Range of both vectors
range(df_polls[, c("ABC_poll", "CBS_poll")])

## Add a column for the difference of polls.

df_polls$Diff <- df_polls$ABC_poll - df_polls$CBS_poll
head(df_polls)

## Create a Bar graph with the data frame
df_pollsLong <- df_polls %>%
  pivot_longer(cols = ends_with("_poll"),
               names_to = "polls",
               values_to = "Votes")

ggplot(df_pollsLong, aes(x = Name, y = Votes, fill = polls)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.5) +
  labs(title = "ABC vs. CBS poll counts",
       x = "Politician",
       y = "Vote Count")

## Blog link: https://dleonzonlis4370.blogspot.com/2025/09/module-3-assignment.html
