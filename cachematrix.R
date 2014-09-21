## Coursera Data Science Specialization - R Programming (rprog-007)
## Author : Yusuf Turk  <yusufturk2@gmail.com>

## Function makeCacheMatrix()
## Creates a matrix x
## set()                :   replaces the matrix m
## get()                :   returns the matrix m
## setInverseMatrix()   :   inverts the matrix 
## getInverseMatrix()   :   returns the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverseMatrix <- function(solve) m <<- solve
    getInverseMatrix <- function() m
    list(set = set, get = get,
        setInverseMatrix = setInverseMatrix,
        getInverseMatrix = getInverseMatrix)
}


## Function cacheSolve()
## Returns the inverted matrix of a given matrix x

cacheSolve <- function(x, ...) {
    myMatrix <- x$getInverseMatrix()
    if(!is.null(myMatrix)){
        message("getting cached matrix data")
        return(myMatrix)
    }
    matrixData <- x$get()
    myMatrix <- solve(matrixData)
    x$setInverseMatrix(myMatrix)
    myMatrix
}
