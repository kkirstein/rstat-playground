# perfect_numbers.R
# Calculate Perfect numbers in R

library(parallel)

# predicate to check for perfect numbers
is_perfect <- function (n) {
  sum <- 0
  i <- 1
  while (i < n) {
    if (n %% i == 0) {
      sum <- sum + i
    }
    if (sum > n) { break }
    i <- i + 1
  }
  
  sum == n
}

# collect all perfect numbers with upper bound
perfect_numbers <- function (n) {
  pred <- apply(array(seq(1, n)), 1, is_perfect)
  which(pred)
}

# collect all perfect numbers with upper bound
# (parallel implmentation)
perfect_numbers_par <- function (n) {
  num_cores <- detectCores()
  
  cl <- makeCluster(num_cores)
  pred = parLapply(cl, array(seq(1, n)), is_perfect)
  stopCluster(cl)
  
  which(unlist(pred))
  # pred
}