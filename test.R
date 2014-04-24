## examples to test the code

## run provided code example ####
source("example.R")

rm(some.vector)

some.numbers <- c(1, 2, 3, 4, 5, 6, 7, 8)
summary(some.numbers)

some.vector <- makeVector(some.numbers)
str(some.vector)

cachemean(some.vector)
cachemean(some.vector)


## run own code  ####
source(cachematrix.R)

# some random matrix
set.seed(42)
rnorm(4)
rnorm(4)
