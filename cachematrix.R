## Put comments here that give an overall description of what your
## functions do

## to get inverse of matrix 

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inverse <<- inverse
        getinverse <- function() inverse
        list(set = set, get= get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## to cache the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        cacheSolve <- function(x, ...) {
                ## Return a matrix that is the inverse of 'x'
                inverse <- x$inverse()
                if(!is.null(inverse)){
                        message("getting cached data")
                        return(inverse)
                }
                data <- x$get()
                inverse <- solve(data,...)
                x$setinverse(inverse)
                inverse
}
}
