## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversevalue <- NULL
  set <- function(y) {
    x <<- y
    inversevalue <<- NULL
  }
  get <- function() x
  setmean <- function(mean) inversevalue <<- mean
  getmean <- function() inversevalue
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inversevalue <- x$getmean()
  if(!is.null(inversevalue)) {
    message("getting cached data")
    return(inversevalue)
  }
  data <- x$get()
  inversevalue <- solve(data, ...)
  x$setmean(inversevalue)
  inversevalue
        ## Return a matrix that is the inverse of 'x'
}

