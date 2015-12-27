## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
cachedInverse <- NULL
set <- function(y) {
x <<- y
cachedInverse <<- NULL
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
get <- function() x
setInverse <- function(inverse) cachedInverse <<- inverse
getInverse <- function() cachedInverse
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}
