# mandelbrot.R
# Calculate Mandelbrot set in R

# pixel value
pixel <- function (z, n_max = 255, r_max = 2.0) {
  z0 <- z
  zi <- complex(real = 0, imaginary = 0)
  
  for (n in 0:n_max) {
    zi <- zi * zi + z0
    if (abs(zi) > r_max) { return(n) }
  }
  
  0
}

rgb_val <- function (n) {
  list(r = 5 * (n %% 15), g = 32 * (n %% 7), b = 8 * (n %% 31))
}

