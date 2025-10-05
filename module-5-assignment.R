## Dimitri Leonzon
## LIS 4370
## Module 3 Assignment

# Creating the Matricies
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Inspect Dimensions
dim(A)  # should be 10 × 10
dim(B)  # 10 × 100 — not square

# Compute Inverse and Determinant
if (abs(detA) > 1e-12) {
  invA <- solve(A)
  print("Inverse of A:")
  print(invA)
} else {
  invA <- "Matrix A is singular and cannot be inverted."
  print("Matrix A is singular and cannot be inverted.")
}
detA <- det(A)

invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)

invA
detA

invB
detB