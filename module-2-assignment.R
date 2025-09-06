## Dimitri Leonzon
## LIS 4370
## Module 2 Assignment

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

## Utilizing provided function

myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}

## The function gives us syntax errors as 'assignment' and 'someData' are unknown variables.
## To fix this we need to understand the overall goal of the funciton; it is to find a mean of a vector.
## To find the mean we would add up the total values of each integer and divide it by the amount of integers within the vector.

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

myMean(assignment2)

## This updated function will calculate the mean for the 'assignment2' vector.
## To make this function a true function (where it can be utilized with any vector), replace assignment2 = x

myMean <- function(x) {
  return(sum(x) / length(x))
}

forfun <- c(67, 12, 42, 10)
myMean(forfun)

## Blog link: https://dleonzonlis4370.blogspot.com/2025/09/module-2-assignment.html 

