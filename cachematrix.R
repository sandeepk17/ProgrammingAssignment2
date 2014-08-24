## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Initialising the inverse property
  i <- NULL
##Method for setting matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
## getting value of the matrix
  get <- function() {
## Return the matrix
    m 

## Method for getting the inverse of the matrix
    setInverse <- function(inverse) {
      i <<- inverse
    }
    
## Method for getting the inverse of the matrix
    getInverse <- function() {

## Return the inverse property
      i
    }
    
## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}
## Write a short comment describing this function

 cacheSolve <- function(x, ...) {
  
## Return matrix that is the inverse of 'x'
   m <- x$getInverse()

## Return the inverse if its already set
  if( !is.null(m) ) {
  message("getting cached data")
            return(m)
      }
## Get the matrix 
  data <- x$get()
  
## Calculate the inverse by matrix multiplication
  m <- solve(data) %*% data
 

## Setting the inverse to the object
  x$setInverse(m)
 
## Returning the matrix
  m
  
}
