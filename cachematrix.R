## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(b){
    a <<- b
    inver <<- NULL
  }
  get <- function() a
  setInverse <- function(solveMatrix) inver <<- solveMatrix
  getInverse <- function() inver
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheSolve <- function(x, ...) {
        inver <- x$getInverse()
        if(!is.null(inver)){
          message("Obtener datos almacenados en caché")
          return(inver)
         }
  data <- x$get()
  inver <- solve(data)
  x$setInverse(inver)
  inver      

}
