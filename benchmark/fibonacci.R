# fibonacci.R
# Calculate Fibonacci numbers in R

library(dplyr)

# naive implementation
fib_naive <- function (n) {
  if (n < 2) {
    n
  } else {
    fib_naive(n-2) + fib_naive(n-1)
  }
}

# tail-call optimized implementation
fib <- function (n) {
  loop <- function (n, a, b) {
    if (n == 0) {
      a
    } else {
      loop(n-1, b, a+b)
    }
  }
  
  loop(n, 0, 1)
}

# iterative implementation
fib_iter <- function (n) {
  if (n < 2) {
    n
  } else {
    a <- 0
    b <- 1
    for (i in (1:n-1)) {
      tmp <- a
      a <- b
      b <- tmp + b
    }
    a
  }
}

# implementation based on data.frame (& dplyr)
# fib_df <- function (n) {
#   df <- tibble(n = seq(1, n)) %>%
#   mutate(a = cumsum(n),
#          b = cumsum(lead(a, default = 0)),
#          fib = a + b)
#   
#   df
# }