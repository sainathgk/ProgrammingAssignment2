## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setMatrix <- function (mat)
  {
    x <<- mat
    inv <<- NULL
  }
  getMatrix <- function()
  {
    x
  }
  
  setInverse <- function(inverse)
  {
    inv <<- inverse
  }
  
  getInverse <- function()
  {
    inv
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver <- x$getInverse()
  if(!is.null(inver))
  {
    return(inver)
  }
  
  data <- x$getMatrix()
  inver <- solve(data, ...)
  x$setInverse(inver)
  
  inver
}
