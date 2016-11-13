## The first Function creates a dummy matrix whose output can be provided to the next function ie. cacheSolve()

## makeCacheMatrix provides an instance of a matrix whose inverse can be calculated

makeCacheMatrix <- function(x = matrix()) {
  outputMatrix <- matrix(data = NA, nrow = nrow(x), ncol = ncol(x))
  outputMatrix
}


## This function returns the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  outputMatrix <- matrix(data = NA, nrow = nrow(x), ncol = ncol(x))
  endRow <- seq(1, nrow(x))
  endCol <- seq(1, ncol(x))
  for (i in endRow) {
    for (j in endCol){
      outputMatrix[i, j] <- x[j, i]
    }
  }
  outputMatrix
}

