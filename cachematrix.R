## Put comments here that give an overall description of what your
## functions do

## to get inverse of matrix 

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
## apply set to modify X and reset the inv to Null
        set <- function(y){
                x <<- y
                inverse <<- NULL
        }
## apply get to retrieve the stored matrix
        get <- function() x
## apply setinverse to store the inverse of the matrix
        setinverse <- function(solve) inverse <<- inverse
## apply getinverse to return the stored inverted matrix.
        getinverse <- function() inverse
        list(set = set, get= get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## to cache the inverse of matrix
        
        cacheSolve <- function(x, ...) {
                ## Return a matrix that is the inverse of 'x'
                inverse <- x$inverse()
                if(!is.null(inverse)){
                        message("getting cached data")
                        return(inverse)
                }
## if inv is null, solve the inverse of x and cache the result
                data <- x$get()
                inverse <- solve(data,...)
                x$setinverse(inverse)
                inverse
}
}
