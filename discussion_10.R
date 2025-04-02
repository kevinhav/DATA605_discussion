# Markov Chains

# Transition matrix
# Multiply by offspring chance for conditional
P <- matrix(c(
  0.8*0.8, 0.8*0.1, 0.8*0.1, 0.2,    # Professional
  0.8*0.2, 0.8*0.6, 0.8*0.2, 0.2,    # Skilled
  0.8*0.25, 0.8*0.25, 0.8*0.5, 0.2,  # Unskilled
  0, 0, 0, 1),                       # Died out
  nrow = 4, byrow = TRUE)

print(P)

# Check after 5 generations
P_3 <- P %*% P %*% P

print(P_3)