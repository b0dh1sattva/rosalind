fibSolve <- function(n, k){
        #len is the length of the vector
        #the last element of which is your answer
        len <-  n
        fibvals <- numeric(len)
        #initializing the first two fibonacci elements
        fibvals[1] <- 1
        fibvals[2] <- 1
        #for loop that starts at the 3rd element of the
        #vector and adds the two elements prior to come
        #up with the ith element
        for (i in 3:len) { 
                #k is important here it is the number by which
                #you are multiplying the rabbits
                #if each rabbit had more than one pair of rabbits
                #k > 1.
                fibvals[i] <- (fibvals[i-1])+(fibvals[i-2]*k)
        } 
        fibvals[n]
}