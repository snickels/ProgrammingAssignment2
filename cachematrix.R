## Calculates, caches and recalls inverse matrix:
## First function "makeCacheMatrix" creates a "matrix", which actually is a
## list of functions.
## Second function "cacheSolve" recalls inverse matrix if available. If not,
## it calculates and stores inverse matrix.

## TODO: check google R code style 


## creates a special "matrix" object
## that can cache its inverse:
## a list containing a function to
# 
# 1.  set the value of the matrix
# 2.  get the value of the matrix
# 3.  set the value of the inverse matrix
# 4.  get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inverse.matrix <- NULL
  
  setInput <- function(y) {
    input.matrix <<- y
    inverse.matrix <<- NULL
  }
  
  getInput <- function() x
  setInverse <- function(inverse) inverse.matrix <<- inverse
  getInverse <- function() inverse.matrix

  list(setInput = setInput, 
       getInput = getInput,
       setInverse = setInverse,
       getInverse = getInverse)
}


## checks if inverse matrix is cached
## yes: retrieve from cache
## no: calculate inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse.matrix <- x$getInverse()
  if(!is.null(inverse.matrix)) {
    message("getting cached data")
    return(inverse.matrix)
  }
  data <- x$getInput()
  inverse.matrix <- solve(data, ...)
  
  x$setInverse(inverse.matrix)
  inverse.matrix
}
