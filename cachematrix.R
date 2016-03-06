## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The first function, makeCacheMatrix creates a special "matrix"

makeCacheMatrix <- function(x = matrix) {
  matr <- NULL
  
  # Setting the matrix value 
  set <- function(y) {
    x <<- y 
    matr <<- NULL 
  }
  
  # Getting the matrix value 
  get <- function() x
  
  # Set the matrix inverse value
  setInverse <- function(solve) a <- solve 
  
  # Get the matrix inverse value
  getInverse <- function() matr
  
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## Write a short comment describing this function

##The following cacheSolve function calculates the inverse matrix of the "matrix"
cacheSolve <- function(x, ...) {
  
  g_inv <- x$getInverse()
  
  if(!is.null(g_inv)) {
    message("getting cache dats")
    return(g_inv)
  }
  
  data <- x$get()
  
  g_inv <- solve(data, ...)
  
  x$setInverse(g_inv)
  
  g_inv
}