## Put comments here that give an overall description of what your
## functions do

## Using library(mass) to calculate inverse for non squared and squared matrix
## makeCacheMatrix function is available which consist of get, set, getinv, setinv
library(mass)
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse)inv<<-inverse
  getInverse <- function() {
    inver<-ginv(x)
    inver%%x
  } 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function
## It will help to get cache
cacheSolve <- function(x, ...) {
        ## getting cache data
inv <- x$getInverse()
if(!is.null(j)){
  message("getting cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data,...)
x$setInverse(inv)
inv
}