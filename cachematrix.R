## This code is used to compute the inverse of a square matrix

## The first function creates a special "vector", which is really a list 
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
			 get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function calculates the inverse of the Matrix

cacheSolve <- function(x, ...) {        
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}

