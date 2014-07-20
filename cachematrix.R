## These functions, in conjunction, crete an object that stores a matrix and caches its inverse. 

## makeCacheMatrix creates a list containing the 4 sub-functions
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL #initialize the inverse as NULL
  #create the 4 functions for setting the matrix, displaying the matrix, setting the inverse, and displaying the inverse. 
  set <- function(y) {
    x <<- y
    i <<- NULL 
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve stores the inverse of the matrix (x), or displayes the iverse if already cached. 
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) { 
    message("getting cached data") #if i is already cached, display the saved value
    return(i)
  }
  data <- x$get() #assign the matrix to 'data'
  i <- solve(data, ...)  #assign 'i' as the inverse
  x$setinverse(i) #set the inverse with 'i'
  i #display the inverse
        ## Return a matrix that is the inverse of 'x'
}
