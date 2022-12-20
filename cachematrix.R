## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function create an object with set/get to modify and get the values
# of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

# this function checks if the inverse of the matrix is cached
# if yes it retrieves it
# if not it calculates it and updates the value in the object

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inv(data, ...)
  x$setinverse(m)
  m
}
