## Dimitri Leonzon
## LIS 4370
## Module 7 Assignment

## 1. Load dataset
data("mtcars")

head(mtcars)   
str(mtcars)

## 2. Test generic functions

print(mtcars)
summary(mtcars)

## 3. Explore S3 vs. S4
s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

summary(s3_obj)

setClass("student_s4",
        slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

summary(s4_obj)

print(s3_obj)
print(s4_obj)

## https://dleonzonlis4370.blogspot.com/2025/10/module-7-assignment.html

