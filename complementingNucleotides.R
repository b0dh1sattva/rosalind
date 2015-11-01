complementingNucleotides <- function(x){
        #turn string into vector split on each character
        xSplit <- unlist(strsplit(x, ""))
        #get length of vector
        count<-length(xSplit)
        #reverse the vector
        revXSplit <- rev(xSplit)
        #iterate over the vector with if statement inside a while loop
        #changing each element to it's complement T to A, G to C, C to G
        #and A to T
        for (i in 1:count) {
                if (revXSplit[i] == "T"){
                        revXSplit[i] <- "A"
                }else if (revXSplit[i] == "G"){
                        revXSplit[i] <- "C"
                }else if (revXSplit[i] == "C"){
                        revXSplit[i] <- "G"
                }else{
                        revXSplit[i] <- "T"
                }
        }
        
        #output the new vector as a collapsed string
        paste(revXSplit, collapse="")
}