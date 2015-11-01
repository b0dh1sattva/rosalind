transcribeNucleotides <- function(x){
        #turn string into vector split on each character
        xSplit <- unlist(strsplit(x, ""))
        #get length of vector
        count<-length(xSplit)
        
        #iterate over the vector with if statement inside a while loop
        for (i in 1:count) {
                #if the character in index of the vector is a t make it a u
                if (xSplit[i] == "T"){
                        xSplit[i] <- "U"
                }
        }
        
        #output the new vector as a collapsed string
        paste(xSplit, collapse="")
}