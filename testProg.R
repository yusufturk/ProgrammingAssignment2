## test usage for makeCacheMatrix && cacheSolve
source("cachematrix.R")

x <- matrix(1:4,2,2)
cachedMatrix <- makeCacheMatrix(x)
cachedMatrix$get()
cacheSolve(cachedMatrix)
cachedMatrix$getInverseMatrix()
cacheSolve(cachedMatrix)
# replacing the matrix - set new matrix
cachedMatrix$set(matrix(c(0,5,10,15), nrow=2, ncol=2))
cacheSolve(cachedMatrix)
cachedMatrix$get()
cachedMatrix$getInverseMatrix()
