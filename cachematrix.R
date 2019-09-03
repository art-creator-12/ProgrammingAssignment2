## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#For this assignment, assume that the matrix supplied is always invertible.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  # matrix setter & getter
  set <- function(y){
    x<<-y
    i<<-NULL
  }
  get <- function() x
  # inverse matrix setter & getter
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  # make functions list
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinv()
  #if inverse is already cached
  if(!is.null(i)){
    message("getting cache data")
    return(i)
  }
  #if inverse is not cached
  mx <- x$get()
  i <- solve(mx)
  x$setinv(i)
        ## Return a matrix that is the inverse of 'x'
  i
}
