## The first Function creates a dummy matrix whose output can be provided to the next function ie. cacheSolve()

## makeCacheMatrix provides an instance of a matrix whose inverse can be calculated

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getSolve <- function() m
  list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## This function returns the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  outputMatrix <- matrix(data = NA, nrow = nrow(m), ncol = ncol(m))
  endRow <- seq(1, nrow(m))
  endCol <- seq(1, ncol(m))
  for (i in endRow) {
    for (j in endCol){
      outputMatrix[i, j] <- m[j, i]
    }
  }
  m <- outputMatrix
  x$setSolve(m)
  m
}

