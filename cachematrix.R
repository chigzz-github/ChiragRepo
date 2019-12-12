## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x_cache = matrix()) {
  cache_inv <- NULL
  set <- function(y_cache){
    x_cache <<- y_cache
    cache_inv <<- NULL
  }
  get <- function() x_cache
  setInverse <- function(solveMatrix) cache_inv <<- solveMatrix
  getInverse <- function() cache_inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x_cache, ...) {
        ## Return a matrix that is the inverse of 'x'
  cache_inv <- x_cache$getInverse()
  if(!is.null(cache_inv)){
    return(cache_inv)
  }
  data <- x_cache$get()
  inv <- solve(data)
  x_cache$setInverse(cache_inv)
  cache_inv      
}
