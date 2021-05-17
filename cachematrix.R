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
## function "solve()" in R, that take one argument that is matrix in my case ...                         
## and return its inverse..........
cacheSolve <- function(x, ...) {
  solve(x)
  ## solve function return the inverse of matrix 'x'
}
