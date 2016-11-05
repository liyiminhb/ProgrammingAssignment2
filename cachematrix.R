## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
    set <- function(matrix) {
        x <<- y
## <<- rebinds an existing name in a parent of the current environment
        inv <<- NULL
    }
    get <- function() {
        x
        }
    setInverse <- function(inverse) {
        inv <<- inverse
    }
    
    getInverse <- function() {
        inv
    }
    list (set = set, 
          get = get,
          setInverse = setInverse,
          getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv <- x$getInverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    mat<-x$get()
    inv<-solve(mat,...)
## solve() can got the inverse of the matrix which we created by
## matrix made function
    x$setInverse(inv)
    inv
}
