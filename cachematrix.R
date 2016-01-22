## Frankly, I just followed the example function and changed mean to inverse

##when you put in a matrix x, the function: 
##sets the value of the matrix, 
##gets the value of the matrix, 
##sets the value of the inverse 
##gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse_mat <- NULL
  set <- function (y){
    x <<- y
    inverse_mat <<- NULL
  }
  get <-function() x
  setInverse <- function(inverse) inverse_mat <<- inverse
  getInverse <- function() inverse_mat
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Again, I used the example as a blue print
## this function:
## checks if inverse is already set
## if not, calculates the inverse and sets is as inverse_mat

cacheSolve <- function(x, ...) {
  inverse_mat <- x$getInverse()
  if(!is.null(inverse_mat)){
    message("get inverse from cache")
    return(inverse_mat)
  }
  data <- x$get()
  inverse_mat <- solve(data, ...)
  x$setInverse(inverse_mat)
  inverse_mat
}
