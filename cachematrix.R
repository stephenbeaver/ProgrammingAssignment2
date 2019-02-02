## Put comments here that give an overall description of what your

#Matrix Inversion


## makeCacheMatrix will:
# Set Matrix
# Get Matrix
# Set Inverse Matrix
# Get Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {

        inver <- NULL #creates inver variable
        setMatx <- function(y){
                x <<-y #sets passed arg y to global x
                inver <<-NULL 
        }
        getMatx <-function(){ #function to get global x data
                x
        }
        setInvMatx <- function(Inverse){
                inver <<- Inverse #function to sets value passed to setInvMatx to global inver
        }
        getInvMatx <- function(){
                inver #function to get the global inver value
        }
        list(setMatx = setMatx , 
             getMatx = getMatx , 
             setInvMatx = setInvMatx , 
             getInvMatx = getInvMatx )
        
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        inver <- x$getInvMatx()
        if(!is.null(inver)) {
                message("getting cached inverse matrix data.")
                return(inver) #ends fucntion if inv is already found
        }
        data <- x$getMatx() #gets matrix data
        inver <- solve(data) #solves for the inverse of that data
        x$setInvMatx(inver) #sets the solved data to cashe variable
        inver #returns solved data
}
