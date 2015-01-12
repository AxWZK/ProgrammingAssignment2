#--- Hacks performed by AxWZK 
#--- January 11, 2015 
#
## Followed the example closely. All the pieces were there to meet the 
## requirements specified in the assignment. No sense in reinventing
## The wheel. I did change variable names to help avoid confusion

#------
## Follows the example in structure. Modified function names to improve
## clarity and avoid confusion when executing code
#------
makeCacheMatrix <- function(x = matrix()) {
	# initialize
	inv <- NULL
	
	# define funcitons
	setMatrix <- function(mat) { x <<- mat; inv <<- NULL}
	getMatrix <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() inv
	
	# define 1x4 output "matrix"
	list(setMat = setMatrix, 
		getMat = getMatrix, 
		setInv = setInverse, 
		getInv = getInverse)
}
#------
## This implementation makes use of the 'solve()' function, 
## which will return the inverse of a square matrix.
#------
cacheSolve <- function(x, ...) {
	# initialize
	inv <- x$getInv()
	
	# first check to see if inv already has a value (matrix) assigned
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	
	# calculate the inverse if it is not in cache
	data <- x$getMat()
	inv <- solve(data)
	x$setInv(inv)
	inv
}
