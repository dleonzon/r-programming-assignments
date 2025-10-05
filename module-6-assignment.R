## Dimitri Leonzon
## LIS 4370
## Module 6 Assignment

# Define Matricies
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

# Compute 'A + B' and 'A - B'
AplusB <- A + B
AminusB <- A - B

AplusB
AminusB

# Create diag matrix
D <- diag(c(4, 1, 2, 3))
D

# Create custom 5x5 matrix
# Create a box starting with a 4x4 matrix
box <- diag(3, 4, 4)
box

# Create the left column and top row and bind them to the box
lower <- cbind(rep(2, 4), box)
lower

topRow <- c(3, 1, 1, 1, 1)
topRow

finalBox <- rbind(topRow, lower)
finalBox

