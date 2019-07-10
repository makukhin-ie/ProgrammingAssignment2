
## list with all options in

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(y){
    x<<- y
    m<<- NULL
    
  }
  
  get <- function () x
  setInv <- function(inverse) m <<- inverse
  getInv <- function() m
  
  list(set = set, get = get, setInv = setInv, getInv = getInv)
  
}


## Return inverse matrix

cacheSolve <- function(x, ...) {
  m <- x$getInv()
  if(!is.null(m)){
    message("Already in cash")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInv(m)
  m
}
