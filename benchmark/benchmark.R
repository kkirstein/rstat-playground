# benchmark.R
# A collection of (micro-) benchmarks for the R statistical
# programming language

source("benchmark/fibonacci.R")
source("benchmark/perfect_number.R")

# Fibonacci numbers
print("Fibonacci numbers")
print("=================")
print(system.time(print(paste("fib_naive(35)  = ", fib_naive(35)))))
print(system.time(print(paste("fib(35)        = ", fib(35)))))
print(system.time(print(paste("fib_iter(35)   = ", fib_iter(35)))))
print(system.time(print(paste("fib_iter(1000) = ", fib_iter(1000)))))

print("")


# Perfect numbers
print("Perfect numbers")
print("===============")
print(system.time(print(paste("perfect_numbers(10000)     = ",
                              paste(perfect_numbers(10000), collapse = ", ")))))
print(system.time(print(paste("perfect_numbers_par(10000) = ",
                              paste(perfect_numbers_par(10000), collapse = ", ")))))
print("")


# Mandelbrot set
print("Mandelbrot set")
print("==============")
print("")

