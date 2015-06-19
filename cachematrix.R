## Put comments here that give an overall description of what your
## functions do

##If the inverse of a matrix has not yet been calculated 
##        -- calculate it and cache the result
##If the inverse of the matrix has already bee calculated
##        --retrieve the result

## Write a short comment describing this function
##This function calculates the inverse of a matrix using solve and stores the result in "m"
##getinverse allows us to retrieve the result in other pieces of code
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
##cacheSolve pulls the inverse matrix for use if it has already been calculated
##Otherwiswe it arranges to calculate the inverse
 
cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

        ## Return a matrix that is the inverse of 'x'
}
