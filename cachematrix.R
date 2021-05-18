## 'makeCachematrix': this function creates a special matrix
## that can cache its inverse

## This function is setting the value of matrix if not already defined
makeCacheMatrix <- function(x = matrix() {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(inversee) s <<- inversee
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
##this function will return the inverse of matrix by the us of pre defined...

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}
