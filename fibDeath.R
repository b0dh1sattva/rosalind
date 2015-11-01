fibDeath <- function(n, k){
        #len is the length of the vector
        #the last element of which is your answer
        fibvals <- numeric(len)
        #initializing the first two fibonacci elements
        fibvals[1] <- 1
        fibvals[2] <- 1
        #for loop that starts at the 3rd element of the
        #vector and adds the two elements prior to come
        #up with the ith element
        for (i in 3:n) { 
                #add the i-1 rabbits to the i-2 rabbits and substract the i-k rabbits
                if (i>k){
                        fibvals[i] <- (fibvals[i-1])+(fibvals[i-2])-(fibvals[i-k])
                }else if(i==k){
                        fibvals[i] <- (fibvals[i-1])+(fibvals[i-2])-1
                }else{
                        fibvals[i]<- (fibvals[i-1])+(fibvals[i-2])
                }
                        
        }
        fibvals
}