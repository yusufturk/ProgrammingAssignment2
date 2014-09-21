## Coursera Data Science Specialization - R Programming (rprog-007)
## Author : Yusuf Turk  <yusufturk2@gmail.com>

## Function makeCacheMatrix()
## Creates a matrix x
## set()                :   replaces the matrix m
## get()                :   returns the matrix m
## setInverseMatrix()   :   inverts the matrix 
## getInverseMatrix()   :   returns the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL # create an empty matrix
    set <- function(y){ #set matrix x to new matrix y, set m to NULL
        x <<- y
        m <<- NULL
    }
    get <- function() x # returns the matrix x
    setInverseMatrix <- function(solve) m <<- solve #inverts the matrix m
    getInverseMatrix <- function() m # returns the inverted matrix m
    list(set = set, get = get,
        setInverseMatrix = setInverseMatrix,
        getInverseMatrix = getInverseMatrix)
}


## Function cacheSolve()
## Returns the inverted matrix of a given matrix x

cacheSolve <- function(x, ...) {
    myMatrix <- x$getInverseMatrix() #get the inverted matrix from cache
    if(!is.null(myMatrix)){ # if myMatrix is already inverted return it
        message("getting cached matrix data")
        return(myMatrix)
    }
    matrixData <- x$get() # get original matrix
    myMatrix <- solve(matrixData) # invert the matrix
    x$setInverseMatrix(myMatrix) #replace matrix in cache with new matrix
    myMatrix # print inverted matrix
}
